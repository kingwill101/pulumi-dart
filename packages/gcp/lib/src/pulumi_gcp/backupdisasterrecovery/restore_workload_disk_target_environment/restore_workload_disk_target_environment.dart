// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadDiskTargetEnvironment {
  /// Required. Target project for the disk.
  final String project;

  /// Required. Target zone for the disk.
  final String zone;

  RestoreWorkloadDiskTargetEnvironment({
    required this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    map['zone'] = zone;
    return map;
  }

  factory RestoreWorkloadDiskTargetEnvironment.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadDiskTargetEnvironment(
      project: map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
