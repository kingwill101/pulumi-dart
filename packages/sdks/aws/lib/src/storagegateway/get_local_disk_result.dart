// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLocalDisk.
class GetLocalDiskResult {
  /// Disk identifierE.g., `pci-0000:03:00.0-scsi-0:0:0:0`
  final String? diskId;
  final String? diskNode;
  final String? diskPath;
  final String? gatewayArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetLocalDiskResult].
  /// [diskId] Disk identifierE.g., `pci-0000:03:00.0-scsi-0:0:0:0`
  /// [diskNode] Optional.
  /// [diskPath] Optional.
  /// [gatewayArn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetLocalDiskResult({
    this.diskId,
    this.diskNode,
    this.diskPath,
    this.gatewayArn,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'diskNode': ?diskNode,
      'diskPath': ?diskPath,
      'gatewayArn': ?gatewayArn,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetLocalDiskResult.fromMap(Map<String, dynamic> map) {
    return GetLocalDiskResult(
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskNode: (() { final guardedValue = map['diskNode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskPath: (() { final guardedValue = map['diskPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayArn: (() { final guardedValue = map['gatewayArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
