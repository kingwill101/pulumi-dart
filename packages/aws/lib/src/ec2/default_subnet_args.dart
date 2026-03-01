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
    bool? assignIpv6AddressOnCreation,
    required String availabilityZone,
    String? customerOwnedIpv4Pool,
    bool? enableDns64,
    bool? enableResourceNameDnsARecordOnLaunch,
    bool? enableResourceNameDnsAaaaRecordOnLaunch,
    bool? forceDestroy,
    String? ipv6CidrBlock,
    bool? ipv6Native,
    bool? mapCustomerOwnedIpOnLaunch,
    bool? mapPublicIpOnLaunch,
    String? privateDnsHostnameTypeOnLaunch,
    String? region,
    Map<String, String>? tags,
  }) :
      assignIpv6AddressOnCreation = pulumi.Input.asOptionalInput<bool>(assignIpv6AddressOnCreation),
      availabilityZone = pulumi.Input.asInput<String>(availabilityZone),
      customerOwnedIpv4Pool = pulumi.Input.asOptionalInput<String>(customerOwnedIpv4Pool),
      enableDns64 = pulumi.Input.asOptionalInput<bool>(enableDns64),
      enableResourceNameDnsARecordOnLaunch = pulumi.Input.asOptionalInput<bool>(enableResourceNameDnsARecordOnLaunch),
      enableResourceNameDnsAaaaRecordOnLaunch = pulumi.Input.asOptionalInput<bool>(enableResourceNameDnsAaaaRecordOnLaunch),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
      ipv6Native = pulumi.Input.asOptionalInput<bool>(ipv6Native),
      mapCustomerOwnedIpOnLaunch = pulumi.Input.asOptionalInput<bool>(mapCustomerOwnedIpOnLaunch),
      mapPublicIpOnLaunch = pulumi.Input.asOptionalInput<bool>(mapPublicIpOnLaunch),
      privateDnsHostnameTypeOnLaunch = pulumi.Input.asOptionalInput<String>(privateDnsHostnameTypeOnLaunch),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      assignIpv6AddressOnCreation: map['assignIpv6AddressOnCreation'] == null ? null : map['assignIpv6AddressOnCreation'] as bool,
      availabilityZone: map['availabilityZone'] as String,
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : map['customerOwnedIpv4Pool'] as String,
      enableDns64: map['enableDns64'] == null ? null : map['enableDns64'] as bool,
      enableResourceNameDnsARecordOnLaunch: map['enableResourceNameDnsARecordOnLaunch'] == null ? null : map['enableResourceNameDnsARecordOnLaunch'] as bool,
      enableResourceNameDnsAaaaRecordOnLaunch: map['enableResourceNameDnsAaaaRecordOnLaunch'] == null ? null : map['enableResourceNameDnsAaaaRecordOnLaunch'] as bool,
      forceDestroy: map['forceDestroy'] == null ? null : map['forceDestroy'] as bool,
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : map['ipv6CidrBlock'] as String,
      ipv6Native: map['ipv6Native'] == null ? null : map['ipv6Native'] as bool,
      mapCustomerOwnedIpOnLaunch: map['mapCustomerOwnedIpOnLaunch'] == null ? null : map['mapCustomerOwnedIpOnLaunch'] as bool,
      mapPublicIpOnLaunch: map['mapPublicIpOnLaunch'] == null ? null : map['mapPublicIpOnLaunch'] as bool,
      privateDnsHostnameTypeOnLaunch: map['privateDnsHostnameTypeOnLaunch'] == null ? null : map['privateDnsHostnameTypeOnLaunch'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

