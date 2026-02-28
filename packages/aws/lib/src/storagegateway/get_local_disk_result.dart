// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLocalDisk.
class GetLocalDiskResult {
  /// Disk identifierE.g., `pci-0000:03:00.0-scsi-0:0:0:0`
  final String diskId;
  final String diskNode;
  final String diskPath;
  final String gatewayArn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetLocalDiskResult].
  /// [diskId] Disk identifierE.g., `pci-0000:03:00.0-scsi-0:0:0:0`
  /// [diskNode] Required.
  /// [diskPath] Required.
  /// [gatewayArn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetLocalDiskResult({
    required this.diskId,
    required this.diskNode,
    required this.diskPath,
    required this.gatewayArn,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskId'] = diskId;
    map['diskNode'] = diskNode;
    map['diskPath'] = diskPath;
    map['gatewayArn'] = gatewayArn;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetLocalDiskResult.fromMap(Map<String, dynamic> map) {
    return GetLocalDiskResult(
      diskId: map['diskId'] as String,
      diskNode: map['diskNode'] as String,
      diskPath: map['diskPath'] as String,
      gatewayArn: map['gatewayArn'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
