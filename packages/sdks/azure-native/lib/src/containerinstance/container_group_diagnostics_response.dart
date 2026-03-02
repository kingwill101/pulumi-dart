// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_response.dart';

/// Container group diagnostic information.
class ContainerGroupDiagnosticsResponse {
  /// Container group log analytics information.
  final pulumi.Input<LogAnalyticsResponse>? logAnalytics;

  /// Creates a new [ContainerGroupDiagnosticsResponse].
  /// [logAnalytics] Container group log analytics information.
  ContainerGroupDiagnosticsResponse({
    this.logAnalytics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalytics': ?pulumi.Input.mapOptionalInputValue<LogAnalyticsResponse, Map<String, dynamic>>(logAnalytics, (value) => value.toMap()),
    };
  }

  factory ContainerGroupDiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupDiagnosticsResponse(
      logAnalytics: map['logAnalytics'] == null ? null : (LogAnalyticsResponse.fromMap((map['logAnalytics']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

