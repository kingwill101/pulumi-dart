// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_response.dart';

/// Container group diagnostic information.
class ContainerGroupDiagnosticsResponse {
  /// Container group log analytics information.
  final LogAnalyticsResponse? logAnalytics;

  /// Creates a new [ContainerGroupDiagnosticsResponse].
  /// [logAnalytics] Container group log analytics information.
  ContainerGroupDiagnosticsResponse({
    this.logAnalytics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalytics': ?logAnalytics == null ? null : logAnalytics!.toMap(),
    };
  }

  factory ContainerGroupDiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupDiagnosticsResponse(
      logAnalytics: map['logAnalytics'] == null ? null : LogAnalyticsResponse.fromMap((map['logAnalytics'] as Map).cast<String, dynamic>()),
    );
  }
}

