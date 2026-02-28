// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_rule_args_doc}
/// Arguments for getRule.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_rule_args_doc}
class GetRuleArgs {
  final pulumi.Input<String> gatewaySecurityPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> ruleId;

  /// Creates a new [GetRuleArgs].
  /// [gatewaySecurityPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [ruleId] Required.
  GetRuleArgs({
    required String gatewaySecurityPolicyId,
    required String location,
    String? project,
    required String ruleId,
  })  : gatewaySecurityPolicyId =
            pulumi.Input.asInput<String>(gatewaySecurityPolicyId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        ruleId = pulumi.Input.asInput<String>(ruleId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gatewaySecurityPolicyId'] = gatewaySecurityPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['ruleId'] = ruleId;
    return map;
  }

  factory GetRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleArgs(
      gatewaySecurityPolicyId: map['gatewaySecurityPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      ruleId: map['ruleId'] as String,
    );
  }
}
