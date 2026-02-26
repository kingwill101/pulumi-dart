// ignore_for_file: unused_element, unnecessary_cast

class MulticastGroupRangeLogConfig {
  /// Whether to enable logging or not.
  final bool? enabled;

  MulticastGroupRangeLogConfig({
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

  factory MulticastGroupRangeLogConfig.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeLogConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
