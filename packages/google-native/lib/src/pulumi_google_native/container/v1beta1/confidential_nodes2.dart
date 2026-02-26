// ignore_for_file: unused_element, unnecessary_cast

/// ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
class ConfidentialNodes2 {
  /// Whether Confidential Nodes feature is enabled.
  final bool? enabled;

  ConfidentialNodes2({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory ConfidentialNodes2.fromMap(Map<String, dynamic> map) {
    return ConfidentialNodes2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
