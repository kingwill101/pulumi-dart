import 'dart:io';

import 'package:pulumi/pulumi.dart';

class Echo extends CustomResource {
  Echo(String name, Input<String> value, [CustomResourceOptions? opts])
    : super('testprovider:index:Echo', name, {
        'echo': value,
      }, opts ?? CustomResourceOptions());
}

void main() {
  final testValue = Platform.environment['TEST_VALUE'];
  if (testValue == null || testValue.isEmpty) {
    throw Exception('TEST_VALUE must not be empty');
  }

  DeploymentImpl.run(() {
    final self = Echo('testComponent', Input.fromValue('self'));
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    deployment.registerResourceOperation(
      deployment.call('testprovider:index:Echo/doEchoMethod', {
        'echo': testValue,
      }, self: self),
    );
  });
}
