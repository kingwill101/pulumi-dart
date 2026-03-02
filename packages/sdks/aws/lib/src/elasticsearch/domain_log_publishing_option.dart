// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainLogPublishingOption {
  /// ARN of the Cloudwatch log group to which log needs to be published.
  final pulumi.Input<String> cloudwatchLogGroupArn;
  /// Whether given log publishing option is enabled or not.
  final pulumi.Input<bool>? enabled;
  /// Type of Elasticsearch log. Valid values: `INDEX_SLOW_LOGS`, `SEARCH_SLOW_LOGS`, `ES_APPLICATION_LOGS`, `AUDIT_LOGS`.
  final pulumi.Input<String> logType;

  /// Creates a new [DomainLogPublishingOption].
  /// [cloudwatchLogGroupArn] ARN of the Cloudwatch log group to which log needs to be published.
  /// [enabled] Whether given log publishing option is enabled or not.
  /// [logType] Type of Elasticsearch log. Valid values: `INDEX_SLOW_LOGS`, `SEARCH_SLOW_LOGS`, `ES_APPLICATION_LOGS`, `AUDIT_LOGS`.
  DomainLogPublishingOption({
    required this.cloudwatchLogGroupArn,
    this.enabled,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogGroupArn': cloudwatchLogGroupArn,
      'enabled': ?enabled,
      'logType': logType,
    };
  }

  factory DomainLogPublishingOption.fromMap(Map<String, dynamic> map) {
    return DomainLogPublishingOption(
      cloudwatchLogGroupArn: (map['cloudwatchLogGroupArn'] as String).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      logType: (map['logType'] as String).input(),
    );
  }
}

