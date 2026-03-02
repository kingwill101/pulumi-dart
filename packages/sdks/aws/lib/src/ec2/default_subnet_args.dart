// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_default_subnet_default_subnet_args_doc}
/// The set of arguments for DefaultSubnet.
/// {@endtemplate}
/// {@macro pulumi_ec2_default_subnet_default_subnet_args_doc}
class DefaultSubnetArgs {
  final pulumi.Input<bool>? assignIpv6AddressOnCreation;
  /// is required
  /// * The `availability_zone_id`, `cidr_block` and `vpc_id` arguments become computed attributes
  /// * The default value for `map_public_ip_on_launch` is `true`
  ///
  /// This resource supports the following additional arguments:
  final pulumi.Input<String> availabilityZone;
  final pulumi.Input<String>? customerOwnedIpv4Pool;
  final pulumi.Input<bool>? enableDns64;
  final pulumi.Input<bool>? enableResourceNameDnsARecordOnLaunch;
  final pulumi.Input<bool>? enableResourceNameDnsAaaaRecordOnLaunch;
  /// Whether destroying the resource deletes the default subnet. Default: `false`
  final pulumi.Input<bool>? forceDestroy;
  final pulumi.Input<String>? ipv6CidrBlock;
  final pulumi.Input<bool>? ipv6Native;
  final pulumi.Input<bool>? mapCustomerOwnedIpOnLaunch;
  final pulumi.Input<bool>? mapPublicIpOnLaunch;
  final pulumi.Input<String>? privateDnsHostnameTypeOnLaunch;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DefaultSubnetArgs].
  /// [assignIpv6AddressOnCreation] Optional.
  /// [availabilityZone] is required
  /// [customerOwnedIpv4Pool] Optional.
  /// [enableDns64] Optional.
  /// [enableResourceNameDnsARecordOnLaunch] Optional.
  /// [enableResourceNameDnsAaaaRecordOnLaunch] Optional.
  /// [forceDestroy] Whether destroying the resource deletes the default subnet. Default: `false`
  /// [ipv6CidrBlock] Optional.
  /// [ipv6Native] Optional.
  /// [mapCustomerOwnedIpOnLaunch] Optional.
  /// [mapPublicIpOnLaunch] Optional.
  /// [privateDnsHostnameTypeOnLaunch] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [tags] Optional.
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
    return <String, dynamic>{
      'assignIpv6AddressOnCreation': ?assignIpv6AddressOnCreation,
      'availabilityZone': availabilityZone,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'enableDns64': ?enableDns64,
      'enableResourceNameDnsARecordOnLaunch': ?enableResourceNameDnsARecordOnLaunch,
      'enableResourceNameDnsAaaaRecordOnLaunch': ?enableResourceNameDnsAaaaRecordOnLaunch,
      'forceDestroy': ?forceDestroy,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6Native': ?ipv6Native,
      'mapCustomerOwnedIpOnLaunch': ?mapCustomerOwnedIpOnLaunch,
      'mapPublicIpOnLaunch': ?mapPublicIpOnLaunch,
      'privateDnsHostnameTypeOnLaunch': ?privateDnsHostnameTypeOnLaunch,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DefaultSubnetArgs.fromMap(Map<String, dynamic> map) {
    return DefaultSubnetArgs(
      assignIpv6AddressOnCreation: map['assignIpv6AddressOnCreation'] == null ? null : ((map['assignIpv6AddressOnCreation'] as bool).input()).input(),
      availabilityZone: (map['availabilityZone'] as String).input(),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : ((map['customerOwnedIpv4Pool'] as String).input()).input(),
      enableDns64: map['enableDns64'] == null ? null : ((map['enableDns64'] as bool).input()).input(),
      enableResourceNameDnsARecordOnLaunch: map['enableResourceNameDnsARecordOnLaunch'] == null ? null : ((map['enableResourceNameDnsARecordOnLaunch'] as bool).input()).input(),
      enableResourceNameDnsAaaaRecordOnLaunch: map['enableResourceNameDnsAaaaRecordOnLaunch'] == null ? null : ((map['enableResourceNameDnsAaaaRecordOnLaunch'] as bool).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : ((map['ipv6CidrBlock'] as String).input()).input(),
      ipv6Native: map['ipv6Native'] == null ? null : ((map['ipv6Native'] as bool).input()).input(),
      mapCustomerOwnedIpOnLaunch: map['mapCustomerOwnedIpOnLaunch'] == null ? null : ((map['mapCustomerOwnedIpOnLaunch'] as bool).input()).input(),
      mapPublicIpOnLaunch: map['mapPublicIpOnLaunch'] == null ? null : ((map['mapPublicIpOnLaunch'] as bool).input()).input(),
      privateDnsHostnameTypeOnLaunch: map['privateDnsHostnameTypeOnLaunch'] == null ? null : ((map['privateDnsHostnameTypeOnLaunch'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

