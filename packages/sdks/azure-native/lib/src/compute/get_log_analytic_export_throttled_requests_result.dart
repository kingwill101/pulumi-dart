// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_output_response.dart';

/// Result data returned by getLogAnalyticExportThrottledRequests.
class GetLogAnalyticExportThrottledRequestsResult {
  /// LogAnalyticsOutput
  final LogAnalyticsOutputResponse properties;

  /// Creates a new [GetLogAnalyticExportThrottledRequestsResult].
  /// [properties] LogAnalyticsOutput
  GetLogAnalyticExportThrottledRequestsResult({required this.properties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'properties': properties.toMap()};
  }

  factory GetLogAnalyticExportThrottledRequestsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLogAnalyticExportThrottledRequestsResult(
      properties: LogAnalyticsOutputResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
