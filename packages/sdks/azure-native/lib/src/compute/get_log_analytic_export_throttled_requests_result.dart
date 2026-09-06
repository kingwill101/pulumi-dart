// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_output_response.dart';

/// Result data returned by getLogAnalyticExportThrottledRequests.
class GetLogAnalyticExportThrottledRequestsResult {
  /// LogAnalyticsOutput
  final LogAnalyticsOutputResponse? properties;

  /// Creates a new [GetLogAnalyticExportThrottledRequestsResult].
  /// [properties] LogAnalyticsOutput
  const GetLogAnalyticExportThrottledRequestsResult({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties?.toMap(),
    };
  }

  factory GetLogAnalyticExportThrottledRequestsResult.fromMap(Map<String, dynamic> map) {
    return GetLogAnalyticExportThrottledRequestsResult(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return LogAnalyticsOutputResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
