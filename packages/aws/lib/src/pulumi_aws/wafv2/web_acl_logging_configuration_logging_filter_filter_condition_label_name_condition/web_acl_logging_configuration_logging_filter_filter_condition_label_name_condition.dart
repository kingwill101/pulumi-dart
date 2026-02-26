// ignore_for_file: unused_element, unnecessary_cast

class WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition {
  /// Name of the label that a log record must contain in order to meet the condition. It must be a [fully qualified label name](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-label-requirements.html#waf-rule-label-syntax), which includes a prefix, optional namespaces, and the label name itself. The prefix identifies the rule group or web ACL context of the rule that added the label.
  final String labelName;

  WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition({
    required this.labelName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labelName'] = labelName;
    return map;
  }

  factory WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition(
      labelName: map['labelName'] as String,
    );
  }
}
