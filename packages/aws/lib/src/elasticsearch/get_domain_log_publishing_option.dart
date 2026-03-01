// ignore_for_file: unused_element, unnecessary_cast

class GetDomainLogPublishingOption {
  /// The CloudWatch Log Group where the logs are published.
  final String cloudwatchLogGroupArn;

  /// Whether node to node encryption is enabled.
  final bool enabled;

  /// The type of Elasticsearch log being published.
  final String logType;

  /// Creates a new [GetDomainLogPublishingOption].
  /// [cloudwatchLogGroupArn] The CloudWatch Log Group where the logs are published.
  /// [enabled] Whether node to node encryption is enabled.
  /// [logType] The type of Elasticsearch log being published.
  GetDomainLogPublishingOption({
    required this.cloudwatchLogGroupArn,
    required this.enabled,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogGroupArn': cloudwatchLogGroupArn,
      'enabled': enabled,
      'logType': logType,
    };
  }

  factory GetDomainLogPublishingOption.fromMap(Map<String, dynamic> map) {
    return GetDomainLogPublishingOption(
      cloudwatchLogGroupArn: map['cloudwatchLogGroupArn'] as String,
      enabled: map['enabled'] as bool,
      logType: map['logType'] as String,
    );
  }
}
