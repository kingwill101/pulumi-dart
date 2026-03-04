// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition {
  /// Action setting that a log record must contain in order to meet the condition. Valid values for `action` are `ALLOW`, `BLOCK`, `COUNT`, `CAPTCHA`, `CHALLENGE` and `EXCLUDED_AS_COUNT`.
  final pulumi.Input<String> action;

  /// Creates a new [WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition].
  /// [action] Action setting that a log record must contain in order to meet the condition. Valid values for `action` are `ALLOW`, `BLOCK`, `COUNT`, `CAPTCHA`, `CHALLENGE` and `EXCLUDED_AS_COUNT`.
  WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition({
    required this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'action': action};
  }

  factory WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition(
      action: pulumi.Input.fromValue(map['action'] as String),
    );
  }
}
