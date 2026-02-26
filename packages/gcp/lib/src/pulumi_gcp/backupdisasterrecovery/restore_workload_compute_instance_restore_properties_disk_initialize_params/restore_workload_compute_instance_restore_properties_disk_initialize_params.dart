// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams {
  /// Optional. Specifies the disk name.
  final String? diskName;

  /// Optional. URL of the zone where the disk should be created.
  final List<String>? replicaZones;

  RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams({
    this.diskName,
    this.replicaZones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskNameValue = diskName;
    if (diskNameValue != null) {
      map['diskName'] = diskNameValue;
    }
    final replicaZonesValue = replicaZones;
    if (replicaZonesValue != null) {
      map['replicaZones'] = replicaZonesValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams(
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      replicaZones: map['replicaZones'] == null
          ? null
          : (map['replicaZones'] as List).cast<String>(),
    );
  }
}
