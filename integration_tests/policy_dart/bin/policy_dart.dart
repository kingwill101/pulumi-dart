import 'package:pulumi/pulumi.dart';

class PolicyTargetComponent extends ComponentResource {
  PolicyTargetComponent(String name, bool value)
      : super(
          'test:index:PolicyTarget',
          name,
          Input.mapToInputs(<String, dynamic>{'value': value}),
          ComponentResourceOptions(),
        ) {
    registerOutputs(<String, dynamic>{'value': Output.create(value)});
  }
}

class PolicyStack extends Stack {
  late final Output<Object?> policyValue;

  PolicyStack() {
    final cfg = Config();
    final resourceValue = cfg.getBoolean('value') ?? false;
    PolicyTargetComponent('policy-target', resourceValue);
    policyValue = Output.create<Object?>(resourceValue);
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[OutputProperty('policy_value', policyValue)];
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => PolicyStack());
}
