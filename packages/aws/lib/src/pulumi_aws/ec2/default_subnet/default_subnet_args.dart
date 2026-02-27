// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DefaultSubnet.
class DefaultSubnetArgs {
  final Input<bool>? assignIpv6AddressOnCreation;

  /// is required
  /// * The `availability_zone_id`, `cidr_block` and `vpc_id` arguments become computed attributes
  /// * The default value for `map_public_ip_on_launch` is `true`
  ///
  /// This resource supports the following additional arguments:
  final Input<String> availabilityZone;
  final Input<String>? customerOwnedIpv4Pool;
  final Input<bool>? enableDns64;
  final Input<bool>? enableResourceNameDnsARecordOnLaunch;
  final Input<bool>? enableResourceNameDnsAaaaRecordOnLaunch;

  /// Whether destroying the resource deletes the default subnet. Default: `false`
  final Input<bool>? forceDestroy;
  final Input<String>? ipv6CidrBlock;
  final Input<bool>? ipv6Native;
  final Input<bool>? mapCustomerOwnedIpOnLaunch;
  final Input<bool>? mapPublicIpOnLaunch;
  final Input<String>? privateDnsHostnameTypeOnLaunch;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final Input<String>? region;
  final Input<Map<String, String>>? tags;

  DefaultSubnetArgs({
    this.assignIpv6AddressOnCreation,
    required this.availabilityZone,
    this.customerOwnedIpv4Pool,
    this.enableDns64,
    this.enableResourceNameDnsARecordOnLaunch,
    this.enableResourceNameDnsAaaaRecordOnLaunch,
    this.forceDestroy,
    this.ipv6CidrBlock,
    this.ipv6Native,
    this.mapCustomerOwnedIpOnLaunch,
    this.mapPublicIpOnLaunch,
    this.privateDnsHostnameTypeOnLaunch,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assignIpv6AddressOnCreationValue = assignIpv6AddressOnCreation;
    if (assignIpv6AddressOnCreationValue != null) {
      map['assignIpv6AddressOnCreation'] = assignIpv6AddressOnCreationValue;
    }
    map['availabilityZone'] = availabilityZone;
    final customerOwnedIpv4PoolValue = customerOwnedIpv4Pool;
    if (customerOwnedIpv4PoolValue != null) {
      map['customerOwnedIpv4Pool'] = customerOwnedIpv4PoolValue;
    }
    final enableDns64Value = enableDns64;
    if (enableDns64Value != null) {
      map['enableDns64'] = enableDns64Value;
    }
    final enableResourceNameDnsARecordOnLaunchValue =
        enableResourceNameDnsARecordOnLaunch;
    if (enableResourceNameDnsARecordOnLaunchValue != null) {
      map['enableResourceNameDnsARecordOnLaunch'] =
          enableResourceNameDnsARecordOnLaunchValue;
    }
    final enableResourceNameDnsAaaaRecordOnLaunchValue =
        enableResourceNameDnsAaaaRecordOnLaunch;
    if (enableResourceNameDnsAaaaRecordOnLaunchValue != null) {
      map['enableResourceNameDnsAaaaRecordOnLaunch'] =
          enableResourceNameDnsAaaaRecordOnLaunchValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
    }
    final ipv6NativeValue = ipv6Native;
    if (ipv6NativeValue != null) {
      map['ipv6Native'] = ipv6NativeValue;
    }
    final mapCustomerOwnedIpOnLaunchValue = mapCustomerOwnedIpOnLaunch;
    if (mapCustomerOwnedIpOnLaunchValue != null) {
      map['mapCustomerOwnedIpOnLaunch'] = mapCustomerOwnedIpOnLaunchValue;
    }
    final mapPublicIpOnLaunchValue = mapPublicIpOnLaunch;
    if (mapPublicIpOnLaunchValue != null) {
      map['mapPublicIpOnLaunch'] = mapPublicIpOnLaunchValue;
    }
    final privateDnsHostnameTypeOnLaunchValue = privateDnsHostnameTypeOnLaunch;
    if (privateDnsHostnameTypeOnLaunchValue != null) {
      map['privateDnsHostnameTypeOnLaunch'] =
          privateDnsHostnameTypeOnLaunchValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DefaultSubnetArgs.fromMap(Map<String, dynamic> map) {
    return DefaultSubnetArgs(
      assignIpv6AddressOnCreation:
          Input.asOptionalInput<bool>(map['assignIpv6AddressOnCreation']),
      availabilityZone: Input.asInput<String>(map['availabilityZone']),
      customerOwnedIpv4Pool:
          Input.asOptionalInput<String>(map['customerOwnedIpv4Pool']),
      enableDns64: Input.asOptionalInput<bool>(map['enableDns64']),
      enableResourceNameDnsARecordOnLaunch: Input.asOptionalInput<bool>(
          map['enableResourceNameDnsARecordOnLaunch']),
      enableResourceNameDnsAaaaRecordOnLaunch: Input.asOptionalInput<bool>(
          map['enableResourceNameDnsAaaaRecordOnLaunch']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      ipv6CidrBlock: Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      ipv6Native: Input.asOptionalInput<bool>(map['ipv6Native']),
      mapCustomerOwnedIpOnLaunch:
          Input.asOptionalInput<bool>(map['mapCustomerOwnedIpOnLaunch']),
      mapPublicIpOnLaunch:
          Input.asOptionalInput<bool>(map['mapPublicIpOnLaunch']),
      privateDnsHostnameTypeOnLaunch:
          Input.asOptionalInput<String>(map['privateDnsHostnameTypeOnLaunch']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
