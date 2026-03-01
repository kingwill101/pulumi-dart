// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadDiskTargetEnvironment {
  /// Required. Target project for the disk.
  final String project;

  /// Required. Target zone for the disk.
  final String zone;

  /// Creates a new [RestoreWorkloadDiskTargetEnvironment].
  /// [project] Required. Target project for the disk.
  /// [zone] Required. Target zone for the disk.
  RestoreWorkloadDiskTargetEnvironment({
    required this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': project, 'zone': zone};
  }

  factory RestoreWorkloadDiskTargetEnvironment.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadDiskTargetEnvironment(
      project: map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
