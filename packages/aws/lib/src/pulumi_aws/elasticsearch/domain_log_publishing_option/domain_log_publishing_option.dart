// ignore_for_file: unused_element, unnecessary_cast

class DomainLogPublishingOption {
  /// ARN of the Cloudwatch log group to which log needs to be published.
  final String cloudwatchLogGroupArn;

  /// Whether given log publishing option is enabled or not.
  final bool? enabled;

  /// Type of Elasticsearch log. Valid values: `INDEX_SLOW_LOGS`, `SEARCH_SLOW_LOGS`, `ES_APPLICATION_LOGS`, `AUDIT_LOGS`.
  final String logType;

  DomainLogPublishingOption({
    required this.cloudwatchLogGroupArn,
    this.enabled,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudwatchLogGroupArn'] = cloudwatchLogGroupArn;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['logType'] = logType;
    return map;
  }

  factory DomainLogPublishingOption.fromMap(Map<String, dynamic> map) {
    return DomainLogPublishingOption(
      cloudwatchLogGroupArn: map['cloudwatchLogGroupArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logType: map['logType'] as String,
    );
  }
}
