import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as pb;
import 'package:pulumi/src/struct_converter.dart';

class LookupResult {
  final dynamic value;
  final bool isSecret;

  const LookupResult(this.value, this.isSecret);
}

class StackReferenceResource extends CustomResource {
  StackReferenceResource(String name)
      : super(
          'pulumi:pulumi:StackReference',
          name,
          {'name': Input.fromValue(name)},
          CustomResourceOptions(),
        );

  Output<dynamic> getOutput(String outputName) {
    final result = urn.getValue().then((resourceUrn) async {
      return _readOutput(resourceUrn, outputName);
    });

    return Output(
      result.then(
        (lookup) => OutputData<dynamic>(
          value: lookup.value,
          isKnown: true,
          isSecret: lookup.isSecret,
          resources: {this},
        ),
      ),
    );
  }

  Future<LookupResult> _readOutput(
      String resourceUrn, String outputName) async {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    final request = pb.ResourceInvokeRequest()
      ..tok = 'pulumi:pulumi:getResource'
      ..args = await StructConverter.toStruct({'urn': resourceUrn});

    final response = await deployment.monitor.invoke(request);
    final state = response.return_1.fields['state'];
    if (state == null || state.whichKind() != Value_Kind.structValue) {
      return const LookupResult(null, false);
    }

    final stateFields = state.structValue.fields;
    final direct = stateFields[outputName];
    if (direct != null) {
      return _decodePossiblySecret(direct);
    }

    final outputs = stateFields['outputs'];
    if (outputs == null || outputs.whichKind() != Value_Kind.structValue) {
      return const LookupResult(null, false);
    }

    final value = outputs.structValue.fields[outputName];
    if (value == null) {
      return const LookupResult(null, false);
    }

    return _decodePossiblySecret(value);
  }

  LookupResult _decodePossiblySecret(Value value) {
    if (value.whichKind() == Value_Kind.structValue) {
      final fields = value.structValue.fields;
      final sig = fields[Constants.specialSigKey]?.stringValue;
      if (sig == Constants.specialSecretSig) {
        final inner = fields[Constants.valueName];
        return LookupResult(
          inner == null ? null : StructConverter.fromValue(inner),
          true,
        );
      }
    }

    return LookupResult(StructConverter.fromValue(value), false);
  }
}

class MyStack extends Stack {
  MyStack() {
    final deployment = DeploymentImpl.instance;
    final slug =
        '${deployment.organizationName}/${deployment.projectName}/${deployment.stackName}';
    final sr = StackReferenceResource(slug);

    registerOutputs({
      'normal': Output.create('normal'),
      'secret': Output.createSecret(Output.create('secret')),
      'refNormal': sr.getOutput('normal'),
      'refSecret': sr.getOutput('secret'),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
