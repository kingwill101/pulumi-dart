// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentDeploymentTarget {
  /// Deployment mode, valid values: PER_JOB or SESSION
  final pulumi.Input<String> mode;

  /// Deployment target name
  final pulumi.Input<String> name;

  /// Creates a new [DeploymentDeploymentTarget].
  /// [mode] Deployment mode, valid values: PER_JOB or SESSION
  /// [name] Deployment target name
  DeploymentDeploymentTarget({required this.mode, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode, 'name': name};
  }

  factory DeploymentDeploymentTarget.fromMap(Map<String, dynamic> map) {
    return DeploymentDeploymentTarget(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
