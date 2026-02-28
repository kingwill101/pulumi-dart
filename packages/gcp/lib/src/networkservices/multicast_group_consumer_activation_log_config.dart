// ignore_for_file: unused_element, unnecessary_cast

class MulticastGroupConsumerActivationLogConfig {
  /// Whether to enable logging or not.
  final bool? enabled;

  /// Creates a new [MulticastGroupConsumerActivationLogConfig].
  /// [enabled] Whether to enable logging or not.
  MulticastGroupConsumerActivationLogConfig({
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

  factory MulticastGroupConsumerActivationLogConfig.fromMap(
      Map<String, dynamic> map) {
    return MulticastGroupConsumerActivationLogConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
