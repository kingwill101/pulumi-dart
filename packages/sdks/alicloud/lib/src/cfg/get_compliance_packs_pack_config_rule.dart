// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_compliance_packs_pack_config_rule_config_rule_parameter.dart';

class GetCompliancePacksPackConfigRule {
  /// The ID of the rule.
  final pulumi.Input<String> configRuleId;

  /// A list of parameter rules.
  final pulumi.Input<List<GetCompliancePacksPackConfigRuleConfigRuleParameter>>
  configRuleParameters;

  /// Managed Rule Identifier.
  final pulumi.Input<String> managedRuleIdentifier;

  /// Creates a new [GetCompliancePacksPackConfigRule].
  /// [configRuleId] The ID of the rule.
  /// [configRuleParameters] A list of parameter rules.
  /// [managedRuleIdentifier] Managed Rule Identifier.
  GetCompliancePacksPackConfigRule({
    required this.configRuleId,
    required this.configRuleParameters,
    required this.managedRuleIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': configRuleId,
      'configRuleParameters':
          pulumi.Input.mapInputValue<
            List<GetCompliancePacksPackConfigRuleConfigRuleParameter>,
            List<Map<String, dynamic>>
          >(
            configRuleParameters,
            (value) =>
                pulumi.Input.encodeList<
                  GetCompliancePacksPackConfigRuleConfigRuleParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'managedRuleIdentifier': managedRuleIdentifier,
    };
  }

  factory GetCompliancePacksPackConfigRule.fromMap(Map<String, dynamic> map) {
    return GetCompliancePacksPackConfigRule(
      configRuleId: pulumi.Input.fromValue(map['configRuleId'] as String),
      configRuleParameters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetCompliancePacksPackConfigRuleConfigRuleParameter
        >(
          map['configRuleParameters']!,
          (value) =>
              GetCompliancePacksPackConfigRuleConfigRuleParameter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      managedRuleIdentifier: pulumi.Input.fromValue(
        map['managedRuleIdentifier'] as String,
      ),
    );
  }
}
