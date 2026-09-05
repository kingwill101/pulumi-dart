// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMountTarget.
class GetMountTargetResult {
  final String? accessPointId;
  /// The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  final String? availabilityZoneId;
  /// The name of the Availability Zone (AZ) that the mount target resides in.
  final String? availabilityZoneName;
  /// DNS name for the EFS file system.
  final String? dnsName;
  /// ARN of the file system for which the mount target is intended.
  final String? fileSystemArn;
  final String? fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Address at which the file system may be mounted via the mount target.
  final String? ipAddress;
  /// IP address type for the mount target.
  final String? ipAddressType;
  /// IPv6 address at which the file system may be mounted via the mount target.
  final String? ipv6Address;
  /// The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  final String? mountTargetDnsName;
  final String? mountTargetId;
  /// The ID of the network interface that Amazon EFS created when it created the mount target.
  final String? networkInterfaceId;
  /// AWS account ID that owns the resource.
  final String? ownerId;
  final String? region;
  /// List of VPC security group IDs attached to the mount target.
  final List<String>? securityGroups;
  /// ID of the mount target's subnet.
  final String? subnetId;

  /// Creates a new [GetMountTargetResult].
  /// [accessPointId] Optional.
  /// [availabilityZoneId] The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  /// [availabilityZoneName] The name of the Availability Zone (AZ) that the mount target resides in.
  /// [dnsName] DNS name for the EFS file system.
  /// [fileSystemArn] ARN of the file system for which the mount target is intended.
  /// [fileSystemId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Address at which the file system may be mounted via the mount target.
  /// [ipAddressType] IP address type for the mount target.
  /// [ipv6Address] IPv6 address at which the file system may be mounted via the mount target.
  /// [mountTargetDnsName] The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  /// [mountTargetId] Optional.
  /// [networkInterfaceId] The ID of the network interface that Amazon EFS created when it created the mount target.
  /// [ownerId] AWS account ID that owns the resource.
  /// [region] Optional.
  /// [securityGroups] List of VPC security group IDs attached to the mount target.
  /// [subnetId] ID of the mount target's subnet.
  const GetMountTargetResult({
    this.accessPointId,
    this.availabilityZoneId,
    this.availabilityZoneName,
    this.dnsName,
    this.fileSystemArn,
    this.fileSystemId,
    this.id,
    this.ipAddress,
    this.ipAddressType,
    this.ipv6Address,
    this.mountTargetDnsName,
    this.mountTargetId,
    this.networkInterfaceId,
    this.ownerId,
    this.region,
    this.securityGroups,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': ?accessPointId,
      'availabilityZoneId': ?availabilityZoneId,
      'availabilityZoneName': ?availabilityZoneName,
      'dnsName': ?dnsName,
      'fileSystemArn': ?fileSystemArn,
      'fileSystemId': ?fileSystemId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'ipAddressType': ?ipAddressType,
      'ipv6Address': ?ipv6Address,
      'mountTargetDnsName': ?mountTargetDnsName,
      'mountTargetId': ?mountTargetId,
      'networkInterfaceId': ?networkInterfaceId,
      'ownerId': ?ownerId,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'subnetId': ?subnetId,
    };
  }

  factory GetMountTargetResult.fromMap(Map<String, dynamic> map) {
    return GetMountTargetResult(
      accessPointId: (() { final guardedValue = map['accessPointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneName: (() { final guardedValue = map['availabilityZoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemArn: (() { final guardedValue = map['fileSystemArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mountTargetDnsName: (() { final guardedValue = map['mountTargetDnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mountTargetId: (() { final guardedValue = map['mountTargetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
