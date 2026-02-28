// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_access_boundary_policy_details_rule.dart';

class PrincipalAccessBoundaryPolicyDetails {
  /// The version number that indicates which Google Cloud services
  /// are included in the enforcement (e.g. \"latest\", \"1\", ...). If empty, the
  /// PAB policy version will be set to the current latest version, and this version
  /// won't get updated when new versions are released.
  final String? enforcementVersion;

  /// A list of principal access boundary policy rules. The number of rules in a policy is limited to 500.
  /// Structure is documented below.
  final List<PrincipalAccessBoundaryPolicyDetailsRule> rules;

  /// Creates a new [PrincipalAccessBoundaryPolicyDetails].
  /// [enforcementVersion] The version number that indicates which Google Cloud services
  /// [rules] A list of principal access boundary policy rules. The number of rules in a policy is limited to 500.
  PrincipalAccessBoundaryPolicyDetails({
    this.enforcementVersion,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enforcementVersionValue = enforcementVersion;
    if (enforcementVersionValue != null) {
      map['enforcementVersion'] = enforcementVersionValue;
    }
    map['rules'] = pulumi.Input.encodeList<
        PrincipalAccessBoundaryPolicyDetailsRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory PrincipalAccessBoundaryPolicyDetails.fromMap(
      Map<String, dynamic> map) {
    return PrincipalAccessBoundaryPolicyDetails(
      enforcementVersion: map['enforcementVersion'] == null
          ? null
          : map['enforcementVersion'] as String,
      rules: pulumi.Input.decodeList<PrincipalAccessBoundaryPolicyDetailsRule>(
          map['rules'],
          (value) => PrincipalAccessBoundaryPolicyDetailsRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
