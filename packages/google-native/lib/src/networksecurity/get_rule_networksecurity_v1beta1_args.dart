// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_rule_networksecurity_v1beta1_args_doc}
/// Arguments for getRule.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_rule_networksecurity_v1beta1_args_doc}
class GetRuleNetworksecurityV1beta1Args {
  final pulumi.Input<String> gatewaySecurityPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> ruleId;

  /// Creates a new [GetRuleNetworksecurityV1beta1Args].
  /// [gatewaySecurityPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [ruleId] Required.
  GetRuleNetworksecurityV1beta1Args({
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

  factory GetRuleNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetRuleNetworksecurityV1beta1Args(
      gatewaySecurityPolicyId: map['gatewaySecurityPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      ruleId: map['ruleId'] as String,
    );
  }
}
