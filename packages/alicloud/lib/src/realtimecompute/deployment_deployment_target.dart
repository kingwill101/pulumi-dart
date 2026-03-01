// ignore_for_file: unused_element, unnecessary_cast


class DeploymentDeploymentTarget {
  /// Deployment mode, valid values: PER_JOB or SESSION
  final String mode;
  /// Deployment target name
  final String name;

  /// Creates a new [DeploymentDeploymentTarget].
  /// [mode] Deployment mode, valid values: PER_JOB or SESSION
  /// [name] Deployment target name
  DeploymentDeploymentTarget({
    required this.mode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'name': name,
    };
  }

  factory DeploymentDeploymentTarget.fromMap(Map<String, dynamic> map) {
    return DeploymentDeploymentTarget(
      mode: map['mode'] as String,
      name: map['name'] as String,
    );
  }
}

