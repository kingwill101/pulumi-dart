// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_setup_response.dart';

/// Definition of Logging
class LoggingEksClusterResponse {
  /// &lt;p&gt;The cluster control plane logging configuration for your cluster.&lt;/p&gt;
  final pulumi.Input<List<LogSetupResponse>?>? clusterLogging;

  /// Creates a new [LoggingEksClusterResponse].
  /// [clusterLogging] &lt;p&gt;The cluster control plane logging configuration for your cluster.&lt;/p&gt;
  const LoggingEksClusterResponse({
    this.clusterLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterLogging': ?pulumi.Input.mapOptionalInputValue<List<LogSetupResponse>, List<Map<String, dynamic>>>(clusterLogging, (value) => pulumi.Input.encodeList<LogSetupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoggingEksClusterResponse.fromMap(Map<String, dynamic> map) {
    return LoggingEksClusterResponse(
      clusterLogging: (() { final guardedValue = map['clusterLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogSetupResponse>(guardedValue, (value) => LogSetupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
