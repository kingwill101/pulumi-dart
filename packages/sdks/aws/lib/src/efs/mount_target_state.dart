// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MountTarget resources.
class MountTargetState {
  /// The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  final pulumi.Input<String>? availabilityZoneId;
  /// The name of the Availability Zone (AZ) that the mount target resides in.
  final pulumi.Input<String>? availabilityZoneName;
  /// The DNS name for the EFS file system.
  final pulumi.Input<String>? dnsName;
  /// Amazon Resource Name of the file system.
  final pulumi.Input<String>? fileSystemArn;
  /// The ID of the file system for which the mount target is intended.
  final pulumi.Input<String>? fileSystemId;
  /// The address (within the address range of the specified subnet) at
  /// which the file system may be mounted via the mount target.
  final pulumi.Input<String>? ipAddress;
  /// IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  final pulumi.Input<String>? ipAddressType;
  /// IPv6 address to use. Valid only when `ip_address_type` is set to `IPV6_ONLY` or `DUAL_STACK`.
  final pulumi.Input<String>? ipv6Address;
  /// The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  final pulumi.Input<String>? mountTargetDnsName;
  /// The ID of the network interface that Amazon EFS created when it created the mount target.
  final pulumi.Input<String>? networkInterfaceId;
  /// AWS account ID that owns the resource.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of up to 5 VPC security group IDs (that must
  /// be for the same VPC as subnet specified) in effect for the mount target.
  final pulumi.Input<List<String>>? securityGroups;
  /// The ID of the subnet to add the mount target in.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [MountTargetState].
  /// [availabilityZoneId] The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  /// [availabilityZoneName] The name of the Availability Zone (AZ) that the mount target resides in.
  /// [dnsName] The DNS name for the EFS file system.
  /// [fileSystemArn] Amazon Resource Name of the file system.
  /// [fileSystemId] The ID of the file system for which the mount target is intended.
  /// [ipAddress] The address (within the address range of the specified subnet) at
  /// [ipAddressType] IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  /// [ipv6Address] IPv6 address to use. Valid only when `ip_address_type` is set to `IPV6_ONLY` or `DUAL_STACK`.
  /// [mountTargetDnsName] The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  /// [networkInterfaceId] The ID of the network interface that Amazon EFS created when it created the mount target.
  /// [ownerId] AWS account ID that owns the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] A list of up to 5 VPC security group IDs (that must
  /// [subnetId] The ID of the subnet to add the mount target in.
  MountTargetState({
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<String>? availabilityZoneName,
    pulumi.Output<String>? dnsName,
    pulumi.Output<String>? fileSystemArn,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? ipAddressType,
    pulumi.Output<String>? ipv6Address,
    pulumi.Output<String>? mountTargetDnsName,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroups,
    pulumi.Output<String>? subnetId,
  }) :
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      availabilityZoneName = pulumi.Input.asOptionalInput<String>(availabilityZoneName),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      fileSystemArn = pulumi.Input.asOptionalInput<String>(fileSystemArn),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
      ipv6Address = pulumi.Input.asOptionalInput<String>(ipv6Address),
      mountTargetDnsName = pulumi.Input.asOptionalInput<String>(mountTargetDnsName),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroups = pulumi.Input.asOptionalInput<List<String>>(securityGroups),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

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
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      availabilityZoneName: map['availabilityZoneName'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneName'] as String),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      fileSystemArn: map['fileSystemArn'] == null ? null : pulumi.Output.create<String>(map['fileSystemArn'] as String),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      ipAddressType: map['ipAddressType'] == null ? null : pulumi.Output.create<String>(map['ipAddressType'] as String),
      ipv6Address: map['ipv6Address'] == null ? null : pulumi.Output.create<String>(map['ipv6Address'] as String),
      mountTargetDnsName: map['mountTargetDnsName'] == null ? null : pulumi.Output.create<String>(map['mountTargetDnsName'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroups'] as List).cast<String>()),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

