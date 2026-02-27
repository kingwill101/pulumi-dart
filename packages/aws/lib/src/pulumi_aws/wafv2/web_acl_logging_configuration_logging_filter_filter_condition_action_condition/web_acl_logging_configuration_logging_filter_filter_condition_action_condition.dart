// ignore_for_file: unused_element, unnecessary_cast

class WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition {
  /// Action setting that a log record must contain in order to meet the condition. Valid values for `action` are `ALLOW`, `BLOCK`, `COUNT`, `CAPTCHA`, `CHALLENGE` and `EXCLUDED_AS_COUNT`.
  final String action;

  WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition({
    required this.action,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    return map;
  }

  factory WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition(
      action: map['action'] as String,
    );
  }
}
