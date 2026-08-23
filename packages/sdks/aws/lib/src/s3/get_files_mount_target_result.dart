// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFilesMountTarget.
class GetFilesMountTargetResult {
  /// Availability Zone ID.
  final String availabilityZoneId;
  /// File system ID.
  final String fileSystemId;
  final String id;
  /// IPv4 address.
  final String ipv4Address;
  /// IPv6 address.
  final String ipv6Address;
  /// Network interface ID.
  final String networkInterfaceId;
  /// AWS account ID of the owner.
  final String ownerId;
  final String region;
  /// Security group IDs.
  final List<String> securityGroups;
  /// Mount target status.
  final String status;
  /// Status message.
  final String statusMessage;
  /// Subnet ID.
  final String subnetId;
  /// VPC ID.
  final String vpcId;

  /// Creates a new [GetFilesMountTargetResult].
  /// [availabilityZoneId] Availability Zone ID.
  /// [fileSystemId] File system ID.
  /// [id] Required.
  /// [ipv4Address] IPv4 address.
  /// [ipv6Address] IPv6 address.
  /// [networkInterfaceId] Network interface ID.
  /// [ownerId] AWS account ID of the owner.
  /// [region] Required.
  /// [securityGroups] Security group IDs.
  /// [status] Mount target status.
  /// [statusMessage] Status message.
  /// [subnetId] Subnet ID.
  /// [vpcId] VPC ID.
  const GetFilesMountTargetResult({
    required this.availabilityZoneId,
    required this.fileSystemId,
    required this.id,
    required this.ipv4Address,
    required this.ipv6Address,
    required this.networkInterfaceId,
    required this.ownerId,
    required this.region,
    required this.securityGroups,
    required this.status,
    required this.statusMessage,
    required this.subnetId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': availabilityZoneId,
      'fileSystemId': fileSystemId,
      'id': id,
      'ipv4Address': ipv4Address,
      'ipv6Address': ipv6Address,
      'networkInterfaceId': networkInterfaceId,
      'ownerId': ownerId,
      'region': region,
      'securityGroups': securityGroups,
      'status': status,
      'statusMessage': statusMessage,
      'subnetId': subnetId,
      'vpcId': vpcId,
    };
  }

  factory GetFilesMountTargetResult.fromMap(Map<String, dynamic> map) {
    return GetFilesMountTargetResult(
      availabilityZoneId: map['availabilityZoneId'] as String,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      ipv4Address: map['ipv4Address'] as String,
      ipv6Address: map['ipv6Address'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      subnetId: map['subnetId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
