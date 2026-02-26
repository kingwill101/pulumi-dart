// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MountTarget.
class MountTargetArgs {
  /// The ID of the file system for which the mount target is intended.
  final Input<String> fileSystemId;

  /// The address (within the address range of the specified subnet) at
  /// which the file system may be mounted via the mount target.
  final Input<String>? ipAddress;

  /// IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  final Input<String>? ipAddressType;

  /// IPv6 address to use. Valid only when <span pulumi-lang-nodejs="`ipAddressType`" pulumi-lang-dotnet="`IpAddressType`" pulumi-lang-go="`ipAddressType`" pulumi-lang-python="`ip_address_type`" pulumi-lang-yaml="`ipAddressType`" pulumi-lang-java="`ipAddressType`">`ip_address_type`</span> is set to `IPV6_ONLY` or `DUAL_STACK`.
  final Input<String>? ipv6Address;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of up to 5 VPC security group IDs (that must
  /// be for the same VPC as subnet specified) in effect for the mount target.
  final Input<List<String>>? securityGroups;

  /// The ID of the subnet to add the mount target in.
  final Input<String> subnetId;

  MountTargetArgs({
    required this.fileSystemId,
    this.ipAddress,
    this.ipAddressType,
    this.ipv6Address,
    this.region,
    this.securityGroups,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileSystemId'] = fileSystemId;
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final ipv6AddressValue = ipv6Address;
    if (ipv6AddressValue != null) {
      map['ipv6Address'] = ipv6AddressValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    map['subnetId'] = subnetId;
    return map;
  }

  factory MountTargetArgs.fromMap(Map<String, dynamic> map) {
    return MountTargetArgs(
      fileSystemId: Input.asInput<String>(map['fileSystemId']),
      ipAddress: Input.asOptionalInput<String>(map['ipAddress']),
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      ipv6Address: Input.asOptionalInput<String>(map['ipv6Address']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroups:
          Input.asOptionalInput<List<String>>(map['securityGroups']),
      subnetId: Input.asInput<String>(map['subnetId']),
    );
  }
}
