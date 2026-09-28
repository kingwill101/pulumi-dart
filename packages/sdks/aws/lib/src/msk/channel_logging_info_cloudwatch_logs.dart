// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelLoggingInfoCloudwatchLogs {
  /// Whether the CloudWatch Logs destination is enabled.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool> enabled;
  /// Name of the CloudWatch log group that receives the logs.
  final pulumi.Input<String?>? logGroup;

  /// Creates a new [ChannelLoggingInfoCloudwatchLogs].
  /// [enabled] Whether the CloudWatch Logs destination is enabled.
  /// [logGroup] Name of the CloudWatch log group that receives the logs.
  const ChannelLoggingInfoCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'logGroup': ?logGroup,
    };
  }

  factory ChannelLoggingInfoCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return ChannelLoggingInfoCloudwatchLogs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
