// ignore_for_file: unused_element, unnecessary_cast

import 'device_policy_accesscontextmanager_v1beta.dart';

/// A condition necessary for an `AccessLevel` to be granted. The Condition is an AND over its fields. So a Condition is true if: 1) the request IP is from one of the listed subnetworks AND 2) the originating device complies with the listed device policy AND 3) all listed access levels are granted AND 4) the request was sent at a time allowed by the DateTimeRestriction.
class ConditionAccesscontextmanagerV1beta {
  /// Device specific restrictions, all restrictions must hold for the Condition to be true. If not specified, all devices are allowed.
  final DevicePolicyAccesscontextmanagerV1beta? devicePolicy;

  /// CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly, for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32" is not. The originating IP of a request must be in one of the listed subnets in order for this Condition to be true. If empty, all IP addresses are allowed.
  final List<String>? ipSubnetworks;

  /// The request must be made by one of the provided user or service accounts. Groups are not supported. Syntax: `user:{emailid}` `serviceAccount:{emailid}` If not specified, a request may come from any user.
  final List<String>? members;

  /// Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields. Any non-empty field criteria evaluating to false will result in the Condition to be satisfied. Defaults to false.
  final bool? negate;

  /// The request must originate from one of the provided countries/regions. Must be valid ISO 3166-1 alpha-2 codes.
  final List<String>? regions;

  /// A list of other access levels defined in the same `Policy`, referenced by resource name. Referencing an `AccessLevel` which does not exist is an error. All access levels listed must be granted for the Condition to be true. Example: "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  final List<String>? requiredAccessLevels;

  /// Creates a new [ConditionAccesscontextmanagerV1beta].
  /// [devicePolicy] Device specific restrictions, all restrictions must hold for the Condition to be true. If not specified, all devices are allowed.
  /// [ipSubnetworks] CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly, for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32" is not. The originating IP of a request must be in one of the listed subnets in order for this Condition to be true. If empty, all IP addresses are allowed.
  /// [members] The request must be made by one of the provided user or service accounts. Groups are not supported. Syntax: `user:{emailid}` `serviceAccount:{emailid}` If not specified, a request may come from any user.
  /// [negate] Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields. Any non-empty field criteria evaluating to false will result in the Condition to be satisfied. Defaults to false.
  /// [regions] The request must originate from one of the provided countries/regions. Must be valid ISO 3166-1 alpha-2 codes.
  /// [requiredAccessLevels] A list of other access levels defined in the same `Policy`, referenced by resource name. Referencing an `AccessLevel` which does not exist is an error. All access levels listed must be granted for the Condition to be true. Example: "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  ConditionAccesscontextmanagerV1beta({
    this.devicePolicy,
    this.ipSubnetworks,
    this.members,
    this.negate,
    this.regions,
    this.requiredAccessLevels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final devicePolicyValue = devicePolicy;
    if (devicePolicyValue != null) {
      map['devicePolicy'] = devicePolicyValue.toMap();
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
    return map;
  }

  factory ConditionAccesscontextmanagerV1beta.fromMap(
      Map<String, dynamic> map) {
    return ConditionAccesscontextmanagerV1beta(
      devicePolicy: map['devicePolicy'] == null
          ? null
          : DevicePolicyAccesscontextmanagerV1beta.fromMap(
              (map['devicePolicy'] as Map).cast<String, dynamic>()),
      ipSubnetworks: map['ipSubnetworks'] == null
          ? null
          : (map['ipSubnetworks'] as List).cast<String>(),
      members: map['members'] == null
          ? null
          : (map['members'] as List).cast<String>(),
      negate: map['negate'] == null ? null : map['negate'] as bool,
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
      requiredAccessLevels: map['requiredAccessLevels'] == null
          ? null
          : (map['requiredAccessLevels'] as List).cast<String>(),
    );
  }
}
