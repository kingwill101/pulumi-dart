// ignore_for_file: unused_element, unnecessary_cast

/// Defines what action to take for a specific threat_id match.
class ThreatOverrideResponse {
  /// Threat action override. For some threat types, only a subset of actions applies.
  final String action;

  /// Vendor-specific ID of a threat to override.
  final String threatId;

  /// Type of the threat (read only).
  final String type;

  ThreatOverrideResponse({
    required this.action,
    required this.threatId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['threatId'] = threatId;
    map['type'] = type;
    return map;
  }

  factory ThreatOverrideResponse.fromMap(Map<String, dynamic> map) {
    return ThreatOverrideResponse(
      action: map['action'] as String,
      threatId: map['threatId'] as String,
      type: map['type'] as String,
    );
  }
}
