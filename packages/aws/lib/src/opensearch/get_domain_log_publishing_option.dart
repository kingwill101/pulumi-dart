// ignore_for_file: unused_element, unnecessary_cast

class GetDomainLogPublishingOption {
  /// CloudWatch Log Group where the logs are published.
  final String cloudwatchLogGroupArn;

  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  /// Type of OpenSearch log being published.
  final String logType;

  /// Creates a new [GetDomainLogPublishingOption].
  /// [cloudwatchLogGroupArn] CloudWatch Log Group where the logs are published.
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [logType] Type of OpenSearch log being published.
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
