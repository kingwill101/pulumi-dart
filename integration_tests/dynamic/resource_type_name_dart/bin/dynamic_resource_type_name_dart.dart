import 'package:pulumi/pulumi.dart';

class DynamicStyleResource extends CustomResource {
  DynamicStyleResource(String name, [CustomResourceOptions? opts])
      : super(
          'testprovider:dynamic/custom-provider:CustomResource',
          name,
          <String, Input<dynamic>>{},
          opts ?? CustomResourceOptions(),
        );
}

class DynamicTypeNameStack extends Stack {
  DynamicTypeNameStack() {
    final resource = DynamicStyleResource('resource-name');
    registerOutputs({'urn': resource.urn});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => DynamicTypeNameStack());
}
