// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_triggering_rule_response.dart';

/// A rule set which evaluates all its rules upon an event interception. Only when all the included rules in the rule set will be evaluated as 'true', will the event trigger the defined actions.
class AutomationRuleSetResponse {
  final List<AutomationTriggeringRuleResponse>? rules;

  /// Creates a new [AutomationRuleSetResponse].
  /// [rules] Optional.
  AutomationRuleSetResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<AutomationTriggeringRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory AutomationRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleSetResponse(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<AutomationTriggeringRuleResponse>(map['rules'], (value) => AutomationTriggeringRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

