// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level_basic_condition_device_policy.dart';
import 'access_levels_access_level_basic_condition_vpc_network_source.dart';

class AccessLevelsAccessLevelBasicCondition {
  /// Device specific restrictions, all restrictions must hold for
  /// the Condition to be true. If not specified, all devices are
  /// allowed.
  /// Structure is documented below.
  final AccessLevelsAccessLevelBasicConditionDevicePolicy? devicePolicy;
  /// A list of CIDR block IP subnetwork specification. May be IPv4
  /// or IPv6.
  /// Note that for a CIDR IP address block, the specified IP address
  /// portion must be properly truncated (i.e. all the host bits must
  /// be zero) or the input is considered malformed. For example,
  /// "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly,
  /// for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32"
  /// is not. The originating IP of a request must be in one of the
  /// listed subnets in order for this Condition to be true.
  /// If empty, all IP addresses are allowed.
  final List<String>? ipSubnetworks;
  /// An allowed list of members (users, service accounts).
  /// Using groups is not supported yet.
  /// The signed-in user originating the request must be a part of one
  /// of the provided members. If not specified, a request may come
  /// from any user (logged in/not logged in, not present in any
  /// groups, etc.).
  /// Formats: `user:{emailid}`, `serviceAccount:{emailid}`
  final List<String>? members;
  /// Whether to negate the Condition. If true, the Condition becomes
  /// a NAND over its non-empty fields, each field must be false for
  /// the Condition overall to be satisfied. Defaults to false.
  final bool? negate;
  /// The request must originate from one of the provided
  /// countries/regions.
  /// Format: A valid ISO 3166-1 alpha-2 code.
  final List<String>? regions;
  /// A list of other access levels defined in the same Policy,
  /// referenced by resource name. Referencing an AccessLevel which
  /// does not exist is an error. All access levels listed must be
  /// granted for the Condition to be true.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  final List<String>? requiredAccessLevels;
  /// The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with `ip_subnetworks`.
  /// Structure is documented below.
  final List<AccessLevelsAccessLevelBasicConditionVpcNetworkSource>? vpcNetworkSources;

  /// Creates a new [AccessLevelsAccessLevelBasicCondition].
  /// [devicePolicy] Device specific restrictions, all restrictions must hold for
  /// [ipSubnetworks] A list of CIDR block IP subnetwork specification. May be IPv4
  /// [members] An allowed list of members (users, service accounts).
  /// [negate] Whether to negate the Condition. If true, the Condition becomes
  /// [regions] The request must originate from one of the provided
  /// [requiredAccessLevels] A list of other access levels defined in the same Policy,
  /// [vpcNetworkSources] The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with `ip_subnetworks`.
  AccessLevelsAccessLevelBasicCondition({
    this.devicePolicy,
    this.ipSubnetworks,
    this.members,
    this.negate,
    this.regions,
    this.requiredAccessLevels,
    this.vpcNetworkSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devicePolicy': ?devicePolicy == null ? null : devicePolicy!.toMap(),
      'ipSubnetworks': ?ipSubnetworks,
      'members': ?members,
      'negate': ?negate,
      'regions': ?regions,
      'requiredAccessLevels': ?requiredAccessLevels,
      'vpcNetworkSources': ?vpcNetworkSources == null ? null : pulumi.Input.encodeList<AccessLevelsAccessLevelBasicConditionVpcNetworkSource, Map<String, dynamic>>(vpcNetworkSources!, (value) => value.toMap()),
    };
  }

  factory AccessLevelsAccessLevelBasicCondition.fromMap(Map<String, dynamic> map) {
    return AccessLevelsAccessLevelBasicCondition(
      devicePolicy: map['devicePolicy'] == null ? null : AccessLevelsAccessLevelBasicConditionDevicePolicy.fromMap((map['devicePolicy'] as Map).cast<String, dynamic>()),
      ipSubnetworks: map['ipSubnetworks'] == null ? null : (map['ipSubnetworks'] as List).cast<String>(),
      members: map['members'] == null ? null : (map['members'] as List).cast<String>(),
      negate: map['negate'] == null ? null : map['negate'] as bool,
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      requiredAccessLevels: map['requiredAccessLevels'] == null ? null : (map['requiredAccessLevels'] as List).cast<String>(),
      vpcNetworkSources: map['vpcNetworkSources'] == null ? null : pulumi.Input.decodeList<AccessLevelsAccessLevelBasicConditionVpcNetworkSource>(map['vpcNetworkSources'], (value) => AccessLevelsAccessLevelBasicConditionVpcNetworkSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

