// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_v2_action_external_integration_configuration.dart';
import 'automation_rule_v2_action_finding_fields_update.dart';

class AutomationRuleV2Action {
  /// Settings for external integration actions. See `externalIntegrationConfiguration` below.
  final pulumi.Input<AutomationRuleV2ActionExternalIntegrationConfiguration>? externalIntegrationConfiguration;
  /// Settings for updating finding fields. See `findingFieldsUpdate` below.
  final pulumi.Input<AutomationRuleV2ActionFindingFieldsUpdate>? findingFieldsUpdate;
  /// The action type. Valid values: `FINDING_FIELDS_UPDATE`, `EXTERNAL_INTEGRATION`.
  final pulumi.Input<String> type;

  /// Creates a new [AutomationRuleV2Action].
  /// [externalIntegrationConfiguration] Settings for external integration actions. See `externalIntegrationConfiguration` below.
  /// [findingFieldsUpdate] Settings for updating finding fields. See `findingFieldsUpdate` below.
  /// [type] The action type. Valid values: `FINDING_FIELDS_UPDATE`, `EXTERNAL_INTEGRATION`.
  const AutomationRuleV2Action({
    this.externalIntegrationConfiguration,
    this.findingFieldsUpdate,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIntegrationConfiguration': ?pulumi.Input.mapOptionalInputValue<AutomationRuleV2ActionExternalIntegrationConfiguration, Map<String, dynamic>>(externalIntegrationConfiguration, (value) => value.toMap()),
      'findingFieldsUpdate': ?pulumi.Input.mapOptionalInputValue<AutomationRuleV2ActionFindingFieldsUpdate, Map<String, dynamic>>(findingFieldsUpdate, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AutomationRuleV2Action.fromMap(Map<String, dynamic> map) {
    return AutomationRuleV2Action(
      externalIntegrationConfiguration: (() { final guardedValue = map['externalIntegrationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleV2ActionExternalIntegrationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      findingFieldsUpdate: (() { final guardedValue = map['findingFieldsUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleV2ActionFindingFieldsUpdate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
