// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFilesMountTarget.
class GetFilesMountTargetResult {
  /// Availability Zone ID.
  final String? availabilityZoneId;
  /// File system ID.
  final String? fileSystemId;
  final String? id;
  /// IPv4 address.
  final String? ipv4Address;
  /// IPv6 address.
  final String? ipv6Address;
  /// Network interface ID.
  final String? networkInterfaceId;
  /// AWS account ID of the owner.
  final String? ownerId;
  final String? region;
  /// Security group IDs.
  final List<String>? securityGroups;
  /// Mount target status.
  final String? status;
  /// Status message.
  final String? statusMessage;
  /// Subnet ID.
  final String? subnetId;
  /// VPC ID.
  final String? vpcId;

  /// Creates a new [GetFilesMountTargetResult].
  /// [availabilityZoneId] Availability Zone ID.
  /// [fileSystemId] File system ID.
  /// [id] Optional.
  /// [ipv4Address] IPv4 address.
  /// [ipv6Address] IPv6 address.
  /// [networkInterfaceId] Network interface ID.
  /// [ownerId] AWS account ID of the owner.
  /// [region] Optional.
  /// [securityGroups] Security group IDs.
  /// [status] Mount target status.
  /// [statusMessage] Status message.
  /// [subnetId] Subnet ID.
  /// [vpcId] VPC ID.
  const GetFilesMountTargetResult({
    this.availabilityZoneId,
    this.fileSystemId,
    this.id,
    this.ipv4Address,
    this.ipv6Address,
    this.networkInterfaceId,
    this.ownerId,
    this.region,
    this.securityGroups,
    this.status,
    this.statusMessage,
    this.subnetId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': ?availabilityZoneId,
      'fileSystemId': ?fileSystemId,
      'id': ?id,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'networkInterfaceId': ?networkInterfaceId,
      'ownerId': ?ownerId,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'subnetId': ?subnetId,
      'vpcId': ?vpcId,
    };
  }

  factory GetFilesMountTargetResult.fromMap(Map<String, dynamic> map) {
    return GetFilesMountTargetResult(
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
