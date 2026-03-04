// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_compliance_packs_pack_config_rule_config_rule_parameter.dart';

class GetAggregateCompliancePacksPackConfigRule {
  /// The ID of the rule.
  final pulumi.Input<String> configRuleId;

  /// A list of parameter rules.
  final pulumi.Input<
    List<GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter>
  >
  configRuleParameters;

  /// Managed Rule Identifier.
  final pulumi.Input<String> managedRuleIdentifier;

  /// Creates a new [GetAggregateCompliancePacksPackConfigRule].
  /// [configRuleId] The ID of the rule.
  /// [configRuleParameters] A list of parameter rules.
  /// [managedRuleIdentifier] Managed Rule Identifier.
  GetAggregateCompliancePacksPackConfigRule({
    required this.configRuleId,
    required this.configRuleParameters,
    required this.managedRuleIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': configRuleId,
      'configRuleParameters':
          pulumi.Input.mapInputValue<
            List<GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter>,
            List<Map<String, dynamic>>
          >(
            configRuleParameters,
            (value) =>
                pulumi.Input.encodeList<
                  GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'managedRuleIdentifier': managedRuleIdentifier,
    };
  }

  factory GetAggregateCompliancePacksPackConfigRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAggregateCompliancePacksPackConfigRule(
      configRuleId: pulumi.Input.fromValue(map['configRuleId'] as String),
      configRuleParameters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter
        >(
          map['configRuleParameters']!,
          (value) =>
              GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter.fromMap(
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
