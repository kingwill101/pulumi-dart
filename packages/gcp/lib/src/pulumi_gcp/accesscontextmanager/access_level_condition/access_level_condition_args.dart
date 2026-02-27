// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_level_condition_device_policy/access_level_condition_device_policy.dart';
import '../access_level_condition_vpc_network_source/access_level_condition_vpc_network_source.dart';

/// The set of arguments for AccessLevelCondition.
class AccessLevelConditionArgs {
  /// The name of the Access Level to add this condition to.
  final Input<String> accessLevel;

  /// Device specific restrictions, all restrictions must hold for
  /// the Condition to be true. If not specified, all devices are
  /// allowed.
  /// Structure is documented below.
  final Input<AccessLevelConditionDevicePolicy>? devicePolicy;

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
  final Input<List<String>>? ipSubnetworks;

  /// An allowed list of members (users, service accounts).
  /// Using groups is not supported yet.
  /// The signed-in user originating the request must be a part of one
  /// of the provided members. If not specified, a request may come
  /// from any user (logged in/not logged in, not present in any
  /// groups, etc.).
  /// Formats: `user:{emailid}`, `serviceAccount:{emailid}`
  final Input<List<String>>? members;

  /// Whether to negate the Condition. If true, the Condition becomes
  /// a NAND over its non-empty fields, each field must be false for
  /// the Condition overall to be satisfied. Defaults to false.
  final Input<bool>? negate;

  /// The request must originate from one of the provided
  /// countries/regions.
  /// Format: A valid ISO 3166-1 alpha-2 code.
  final Input<List<String>>? regions;

  /// A list of other access levels defined in the same Policy,
  /// referenced by resource name. Referencing an AccessLevel which
  /// does not exist is an error. All access levels listed must be
  /// granted for the Condition to be true.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  final Input<List<String>>? requiredAccessLevels;

  /// The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with `ip_subnetworks`.
  /// Structure is documented below.
  final Input<List<AccessLevelConditionVpcNetworkSource>>? vpcNetworkSources;

  AccessLevelConditionArgs({
    required this.accessLevel,
    this.devicePolicy,
    this.ipSubnetworks,
    this.members,
    this.negate,
    this.regions,
    this.requiredAccessLevels,
    this.vpcNetworkSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessLevel'] = accessLevel;
    final devicePolicyValue = devicePolicy;
    if (devicePolicyValue != null) {
      map['devicePolicy'] = Input.mapOptionalInputValue<
          AccessLevelConditionDevicePolicy,
          Map<String, dynamic>>(devicePolicyValue, (value) => value.toMap());
    }
    final ipSubnetworksValue = ipSubnetworks;
    if (ipSubnetworksValue != null) {
      map['ipSubnetworks'] = ipSubnetworksValue;
    }
    final membersValue = members;
    if (membersValue != null) {
      map['members'] = membersValue;
    }
    final negateValue = negate;
    if (negateValue != null) {
      map['negate'] = negateValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    final requiredAccessLevelsValue = requiredAccessLevels;
    if (requiredAccessLevelsValue != null) {
      map['requiredAccessLevels'] = requiredAccessLevelsValue;
    }
    final vpcNetworkSourcesValue = vpcNetworkSources;
    if (vpcNetworkSourcesValue != null) {
      map['vpcNetworkSources'] = Input.mapOptionalInputValue<
              List<AccessLevelConditionVpcNetworkSource>,
              List<Map<String, dynamic>>>(
          vpcNetworkSourcesValue,
          (value) => Input.encodeList<AccessLevelConditionVpcNetworkSource,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory AccessLevelConditionArgs.fromMap(Map<String, dynamic> map) {
    return AccessLevelConditionArgs(
      accessLevel: Input.asInput<String>(map['accessLevel']),
      devicePolicy: Input.asOptionalInput<AccessLevelConditionDevicePolicy>(
          map['devicePolicy']),
      ipSubnetworks: Input.asOptionalInput<List<String>>(map['ipSubnetworks']),
      members: Input.asOptionalInput<List<String>>(map['members']),
      negate: Input.asOptionalInput<bool>(map['negate']),
      regions: Input.asOptionalInput<List<String>>(map['regions']),
      requiredAccessLevels:
          Input.asOptionalInput<List<String>>(map['requiredAccessLevels']),
      vpcNetworkSources:
          Input.asOptionalInput<List<AccessLevelConditionVpcNetworkSource>>(
              map['vpcNetworkSources']),
    );
  }
}
