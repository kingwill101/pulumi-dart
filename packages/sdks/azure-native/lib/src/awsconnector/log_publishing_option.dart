// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LogPublishingOption
class LogPublishingOption {
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the CloudWatch Logs group to publish logs to.&lt;/p&gt;
  final pulumi.Input<String>? cloudWatchLogsLogGroupArn;
  /// &lt;p&gt;Whether the log should be published.&lt;/p&gt;
  final pulumi.Input<bool>? enabled;

  /// Creates a new [LogPublishingOption].
  /// [cloudWatchLogsLogGroupArn] &lt;p&gt;The Amazon Resource Name (ARN) of the CloudWatch Logs group to publish logs to.&lt;/p&gt;
  /// [enabled] &lt;p&gt;Whether the log should be published.&lt;/p&gt;
  const LogPublishingOption({
    this.cloudWatchLogsLogGroupArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogsLogGroupArn': ?cloudWatchLogsLogGroupArn,
      'enabled': ?enabled,
    };
  }

  factory LogPublishingOption.fromMap(Map<String, dynamic> map) {
    return LogPublishingOption(
      cloudWatchLogsLogGroupArn: (() { final guardedValue = map['cloudWatchLogsLogGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

