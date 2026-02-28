// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceTargetEnvironment {
  /// Required. Target project for the Compute Engine instance.
  final String project;

  /// Required. The zone of the Compute Engine instance.
  final String zone;

  /// Creates a new [RestoreWorkloadComputeInstanceTargetEnvironment].
  /// [project] Required. Target project for the Compute Engine instance.
  /// [zone] Required. The zone of the Compute Engine instance.
  RestoreWorkloadComputeInstanceTargetEnvironment({
    required this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    map['zone'] = zone;
    return map;
  }

  factory RestoreWorkloadComputeInstanceTargetEnvironment.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceTargetEnvironment(
      project: map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
