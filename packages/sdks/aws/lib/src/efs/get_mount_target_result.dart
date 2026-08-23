// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMountTarget.
class GetMountTargetResult {
  final String? accessPointId;
  /// The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  final String availabilityZoneId;
  /// The name of the Availability Zone (AZ) that the mount target resides in.
  final String availabilityZoneName;
  /// DNS name for the EFS file system.
  final String dnsName;
  /// Amazon Resource Name of the file system for which the mount target is intended.
  final String fileSystemArn;
  final String fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Address at which the file system may be mounted via the mount target.
  final String ipAddress;
  /// IP address type for the mount target.
  final String ipAddressType;
  /// IPv6 address at which the file system may be mounted via the mount target.
  final String ipv6Address;
  /// The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  final String mountTargetDnsName;
  final String mountTargetId;
  /// The ID of the network interface that Amazon EFS created when it created the mount target.
  final String networkInterfaceId;
  /// AWS account ID that owns the resource.
  final String ownerId;
  final String region;
  /// List of VPC security group IDs attached to the mount target.
  final List<String> securityGroups;
  /// ID of the mount target's subnet.
  final String subnetId;

  /// Creates a new [GetMountTargetResult].
  /// [accessPointId] Optional.
  /// [availabilityZoneId] The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  /// [availabilityZoneName] The name of the Availability Zone (AZ) that the mount target resides in.
  /// [dnsName] DNS name for the EFS file system.
  /// [fileSystemArn] Amazon Resource Name of the file system for which the mount target is intended.
  /// [fileSystemId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Address at which the file system may be mounted via the mount target.
  /// [ipAddressType] IP address type for the mount target.
  /// [ipv6Address] IPv6 address at which the file system may be mounted via the mount target.
  /// [mountTargetDnsName] The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  /// [mountTargetId] Required.
  /// [networkInterfaceId] The ID of the network interface that Amazon EFS created when it created the mount target.
  /// [ownerId] AWS account ID that owns the resource.
  /// [region] Required.
  /// [securityGroups] List of VPC security group IDs attached to the mount target.
  /// [subnetId] ID of the mount target's subnet.
  const GetMountTargetResult({
    this.accessPointId,
    required this.availabilityZoneId,
    required this.availabilityZoneName,
    required this.dnsName,
    required this.fileSystemArn,
    required this.fileSystemId,
    required this.id,
    required this.ipAddress,
    required this.ipAddressType,
    required this.ipv6Address,
    required this.mountTargetDnsName,
    required this.mountTargetId,
    required this.networkInterfaceId,
    required this.ownerId,
    required this.region,
    required this.securityGroups,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': ?accessPointId,
      'availabilityZoneId': availabilityZoneId,
      'availabilityZoneName': availabilityZoneName,
      'dnsName': dnsName,
      'fileSystemArn': fileSystemArn,
      'fileSystemId': fileSystemId,
      'id': id,
      'ipAddress': ipAddress,
      'ipAddressType': ipAddressType,
      'ipv6Address': ipv6Address,
      'mountTargetDnsName': mountTargetDnsName,
      'mountTargetId': mountTargetId,
      'networkInterfaceId': networkInterfaceId,
      'ownerId': ownerId,
      'region': region,
      'securityGroups': securityGroups,
      'subnetId': subnetId,
    };
  }

  factory GetMountTargetResult.fromMap(Map<String, dynamic> map) {
    return GetMountTargetResult(
      accessPointId: (() { final guardedValue = map['accessPointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: map['availabilityZoneId'] as String,
      availabilityZoneName: map['availabilityZoneName'] as String,
      dnsName: map['dnsName'] as String,
      fileSystemArn: map['fileSystemArn'] as String,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      ipAddressType: map['ipAddressType'] as String,
      ipv6Address: map['ipv6Address'] as String,
      mountTargetDnsName: map['mountTargetDnsName'] as String,
      mountTargetId: map['mountTargetId'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnetId: map['subnetId'] as String,
    );
  }
}
