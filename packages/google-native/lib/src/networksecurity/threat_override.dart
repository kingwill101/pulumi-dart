// ignore_for_file: unused_element, unnecessary_cast

import 'threat_override_action.dart';

/// Defines what action to take for a specific threat_id match.
class ThreatOverride {
  /// Threat action override. For some threat types, only a subset of actions applies.
  final ThreatOverrideAction action;
  /// Vendor-specific ID of a threat to override.
  final String threatId;

  /// Creates a new [ThreatOverride].
  /// [action] Threat action override. For some threat types, only a subset of actions applies.
  /// [threatId] Vendor-specific ID of a threat to override.
  ThreatOverride({
    required this.action,
    required this.threatId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.value,
      'threatId': threatId,
    };
  }

  factory ThreatOverride.fromMap(Map<String, dynamic> map) {
    return ThreatOverride(
      action: ThreatOverrideAction.fromValue(map['action'] as String),
      threatId: map['threatId'] as String,
    );
  }
}

