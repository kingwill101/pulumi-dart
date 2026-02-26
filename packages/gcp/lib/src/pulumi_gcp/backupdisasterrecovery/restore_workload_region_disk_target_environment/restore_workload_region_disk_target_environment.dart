// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadRegionDiskTargetEnvironment {
  /// Required. Target project for the disk.
  final String project;

  /// Required. Target region for the disk.
  final String region;

  /// Required. Target URLs of the replica zones for the disk.
  final List<String> replicaZones;

  RestoreWorkloadRegionDiskTargetEnvironment({
    required this.project,
    required this.region,
    required this.replicaZones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    map['region'] = region;
    map['replicaZones'] = replicaZones;
    return map;
  }

  factory RestoreWorkloadRegionDiskTargetEnvironment.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadRegionDiskTargetEnvironment(
      project: map['project'] as String,
      region: map['region'] as String,
      replicaZones: (map['replicaZones'] as List).cast<String>(),
    );
  }
}
