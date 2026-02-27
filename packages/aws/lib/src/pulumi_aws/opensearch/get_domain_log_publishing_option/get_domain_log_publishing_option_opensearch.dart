// ignore_for_file: unused_element, unnecessary_cast

class GetDomainLogPublishingOptionOpensearch {
  /// CloudWatch Log Group where the logs are published.
  final String cloudwatchLogGroupArn;

  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  /// Type of OpenSearch log being published.
  final String logType;

  GetDomainLogPublishingOptionOpensearch({
    required this.cloudwatchLogGroupArn,
    required this.enabled,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudwatchLogGroupArn'] = cloudwatchLogGroupArn;
    map['enabled'] = enabled;
    map['logType'] = logType;
    return map;
  }

  factory GetDomainLogPublishingOptionOpensearch.fromMap(
      Map<String, dynamic> map) {
    return GetDomainLogPublishingOptionOpensearch(
      cloudwatchLogGroupArn: map['cloudwatchLogGroupArn'] as String,
      enabled: map['enabled'] as bool,
      logType: map['logType'] as String,
    );
  }
}
