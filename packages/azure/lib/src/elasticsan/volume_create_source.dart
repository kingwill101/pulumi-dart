// ignore_for_file: unused_element, unnecessary_cast


class VolumeCreateSource {
  /// Specifies the ID of the source to create the Elastic SAN Volume from. Changing this forces a new resource to be created.
  final String sourceId;
  /// Specifies the type of the source to create the Elastic SAN Volume from. Possible values are `Disk`, `DiskRestorePoint`, `DiskSnapshot` and `VolumeSnapshot`. Changing this forces a new resource to be created.
  final String sourceType;

  /// Creates a new [VolumeCreateSource].
  /// [sourceId] Specifies the ID of the source to create the Elastic SAN Volume from. Changing this forces a new resource to be created.
  /// [sourceType] Specifies the type of the source to create the Elastic SAN Volume from. Possible values are `Disk`, `DiskRestorePoint`, `DiskSnapshot` and `VolumeSnapshot`. Changing this forces a new resource to be created.
  VolumeCreateSource({
    required this.sourceId,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceId': sourceId,
      'sourceType': sourceType,
    };
  }

  factory VolumeCreateSource.fromMap(Map<String, dynamic> map) {
    return VolumeCreateSource(
      sourceId: map['sourceId'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

