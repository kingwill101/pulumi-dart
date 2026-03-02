// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterLoggingInfoBrokerLogsFirehose {
  /// Name of the Kinesis Data Firehose delivery stream to deliver logs to.
  final pulumi.Input<String>? deliveryStream;
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterLoggingInfoBrokerLogsFirehose].
  /// [deliveryStream] Name of the Kinesis Data Firehose delivery stream to deliver logs to.
  /// [enabled] Required.
  ClusterLoggingInfoBrokerLogsFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStream': ?deliveryStream,
      'enabled': enabled,
    };
  }

  factory ClusterLoggingInfoBrokerLogsFirehose.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingInfoBrokerLogsFirehose(
      deliveryStream: map['deliveryStream'] == null ? null : (map['deliveryStream'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

