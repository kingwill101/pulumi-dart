// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MountTarget resources.
class MountTargetState {
  /// The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  final pulumi.Input<String?>? availabilityZoneId;
  /// The name of the Availability Zone (AZ) that the mount target resides in.
  final pulumi.Input<String?>? availabilityZoneName;
  /// The DNS name for the EFS file system.
  final pulumi.Input<String?>? dnsName;
  /// ARN of the file system.
  final pulumi.Input<String?>? fileSystemArn;
  /// The ID of the file system for which the mount target is intended.
  final pulumi.Input<String?>? fileSystemId;
  /// The address (within the address range of the specified subnet) at
  /// which the file system may be mounted via the mount target.
  final pulumi.Input<String?>? ipAddress;
  /// IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  final pulumi.Input<String?>? ipAddressType;
  /// IPv6 address to use. Valid only when `ipAddressType` is set to `IPV6_ONLY` or `DUAL_STACK`.
  final pulumi.Input<String?>? ipv6Address;
  /// The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  final pulumi.Input<String?>? mountTargetDnsName;
  /// The ID of the network interface that Amazon EFS created when it created the mount target.
  final pulumi.Input<String?>? networkInterfaceId;
  /// AWS account ID that owns the resource.
  final pulumi.Input<String?>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A list of up to 5 VPC security group IDs (that must
  /// be for the same VPC as subnet specified) in effect for the mount target.
  final pulumi.Input<List<String>?>? securityGroups;
  /// The ID of the subnet to add the mount target in.
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [MountTargetState].
  /// [availabilityZoneId] The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  /// [availabilityZoneName] The name of the Availability Zone (AZ) that the mount target resides in.
  /// [dnsName] The DNS name for the EFS file system.
  /// [fileSystemArn] ARN of the file system.
  /// [fileSystemId] The ID of the file system for which the mount target is intended.
  /// [ipAddress] The address (within the address range of the specified subnet) at
  /// [ipAddressType] IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  /// [ipv6Address] IPv6 address to use. Valid only when `ipAddressType` is set to `IPV6_ONLY` or `DUAL_STACK`.
  /// [mountTargetDnsName] The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  /// [networkInterfaceId] The ID of the network interface that Amazon EFS created when it created the mount target.
  /// [ownerId] AWS account ID that owns the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] A list of up to 5 VPC security group IDs (that must
  /// [subnetId] The ID of the subnet to add the mount target in.
  const MountTargetState({
    this.availabilityZoneId,
    this.availabilityZoneName,
    this.dnsName,
    this.fileSystemArn,
    this.fileSystemId,
    this.ipAddress,
    this.ipAddressType,
    this.ipv6Address,
    this.mountTargetDnsName,
    this.networkInterfaceId,
    this.ownerId,
    this.region,
    this.securityGroups,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': ?availabilityZoneId,
      'availabilityZoneName': ?availabilityZoneName,
      'dnsName': ?dnsName,
      'fileSystemArn': ?fileSystemArn,
      'fileSystemId': ?fileSystemId,
      'ipAddress': ?ipAddress,
      'ipAddressType': ?ipAddressType,
      'ipv6Address': ?ipv6Address,
      'mountTargetDnsName': ?mountTargetDnsName,
      'networkInterfaceId': ?networkInterfaceId,
      'ownerId': ?ownerId,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'subnetId': ?subnetId,
    };
  }

  factory MountTargetState.fromMap(Map<String, dynamic> map) {
    return MountTargetState(
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneName: (() { final guardedValue = map['availabilityZoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemArn: (() { final guardedValue = map['fileSystemArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountTargetDnsName: (() { final guardedValue = map['mountTargetDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
