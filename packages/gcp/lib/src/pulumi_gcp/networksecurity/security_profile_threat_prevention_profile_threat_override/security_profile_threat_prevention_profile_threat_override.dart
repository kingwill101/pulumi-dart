// ignore_for_file: unused_element, unnecessary_cast

class SecurityProfileThreatPreventionProfileThreatOverride {
  /// Threat action.
  /// Possible values are: `ALERT`, `ALLOW`, `DEFAULT_ACTION`, `DENY`.
  final String action;

  /// Vendor-specific ID of a threat to override.
  final String threatId;

  /// (Output)
  /// Type of threat.
  final String? type;

  SecurityProfileThreatPreventionProfileThreatOverride({
    required this.action,
    required this.threatId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['threatId'] = threatId;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory SecurityProfileThreatPreventionProfileThreatOverride.fromMap(
      Map<String, dynamic> map) {
    return SecurityProfileThreatPreventionProfileThreatOverride(
      action: map['action'] as String,
      threatId: map['threatId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
