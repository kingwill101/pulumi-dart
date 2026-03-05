// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs {
  /// Whether log delivery to Amazon CloudWatch Logs is enabled.
  final pulumi.Input<bool> enabled;
  /// The name of the CloudWatch log group that is the destination for log delivery.
  final pulumi.Input<String>? logGroup;

  /// Creates a new [ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs].
  /// [enabled] Whether log delivery to Amazon CloudWatch Logs is enabled.
  /// [logGroup] The name of the CloudWatch log group that is the destination for log delivery.
  ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'logGroup': ?logGroup,
    };
  }

  factory ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

