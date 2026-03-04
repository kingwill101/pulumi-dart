// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_logging_info_broker_logs.dart';

class ClusterLoggingInfo {
  /// Configuration block for Broker Logs settings for logging info. See logging_info broker_logs Argument Reference below.
  final pulumi.Input<ClusterLoggingInfoBrokerLogs> brokerLogs;

  /// Creates a new [ClusterLoggingInfo].
  /// [brokerLogs] Configuration block for Broker Logs settings for logging info. See logging_info broker_logs Argument Reference below.
  ClusterLoggingInfo({required this.brokerLogs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerLogs':
          pulumi.Input.mapInputValue<
            ClusterLoggingInfoBrokerLogs,
            Map<String, dynamic>
          >(brokerLogs, (value) => value.toMap()),
    };
  }

  factory ClusterLoggingInfo.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingInfo(
      brokerLogs: pulumi.Input.fromValue(
        ClusterLoggingInfoBrokerLogs.fromMap(
          (map['brokerLogs']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
