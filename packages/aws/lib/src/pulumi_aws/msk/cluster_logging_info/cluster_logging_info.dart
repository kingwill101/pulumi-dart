// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_logging_info_broker_logs/cluster_logging_info_broker_logs.dart';

class ClusterLoggingInfo {
  /// Configuration block for Broker Logs settings for logging info. See<span pulumi-lang-nodejs=" loggingInfo " pulumi-lang-dotnet=" LoggingInfo " pulumi-lang-go=" loggingInfo " pulumi-lang-python=" logging_info " pulumi-lang-yaml=" loggingInfo " pulumi-lang-java=" loggingInfo "> logging_info </span>broker_logs Argument Reference below.
  final ClusterLoggingInfoBrokerLogs brokerLogs;

  ClusterLoggingInfo({
    required this.brokerLogs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brokerLogs'] = brokerLogs.toMap();
    return map;
  }

  factory ClusterLoggingInfo.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingInfo(
      brokerLogs: ClusterLoggingInfoBrokerLogs.fromMap(
          (map['brokerLogs'] as Map).cast<String, dynamic>()),
    );
  }
}
