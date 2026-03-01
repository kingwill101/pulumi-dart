// ignore_for_file: unused_element, unnecessary_cast

import 'auto_heal_actions_response.dart';
import 'auto_heal_triggers_response.dart';

/// Rules that can be defined for auto-heal.
class AutoHealRulesResponse {
  /// Actions to be executed when a rule is triggered.
  final AutoHealActionsResponse? actions;
  /// Conditions that describe when to execute the auto-heal actions.
  final AutoHealTriggersResponse? triggers;

  /// Creates a new [AutoHealRulesResponse].
  /// [actions] Actions to be executed when a rule is triggered.
  /// [triggers] Conditions that describe when to execute the auto-heal actions.
  AutoHealRulesResponse({
    this.actions,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : actions!.toMap(),
      'triggers': ?triggers == null ? null : triggers!.toMap(),
    };
  }

  factory AutoHealRulesResponse.fromMap(Map<String, dynamic> map) {
    return AutoHealRulesResponse(
      actions: map['actions'] == null ? null : AutoHealActionsResponse.fromMap((map['actions'] as Map).cast<String, dynamic>()),
      triggers: map['triggers'] == null ? null : AutoHealTriggersResponse.fromMap((map['triggers'] as Map).cast<String, dynamic>()),
    );
  }
}

