// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainLogPublishingOption {
  /// CloudWatch Log Group where the logs are published.
  final pulumi.Input<String> cloudwatchLogGroupArn;
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;
  /// Type of OpenSearch log being published.
  final pulumi.Input<String> logType;

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
      cloudwatchLogGroupArn: pulumi.Input.fromValue(map['cloudwatchLogGroupArn'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logType: pulumi.Input.fromValue(map['logType'] as String),
    );
  }
}

