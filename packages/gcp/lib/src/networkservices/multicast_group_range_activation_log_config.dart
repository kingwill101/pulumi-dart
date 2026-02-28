// ignore_for_file: unused_element, unnecessary_cast

class MulticastGroupRangeActivationLogConfig {
  /// Whether to enable logging or not.
  final bool? enabled;

  /// Creates a new [MulticastGroupRangeActivationLogConfig].
  /// [enabled] Whether to enable logging or not.
  MulticastGroupRangeActivationLogConfig({
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

  factory MulticastGroupRangeActivationLogConfig.fromMap(
      Map<String, dynamic> map) {
    return MulticastGroupRangeActivationLogConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
