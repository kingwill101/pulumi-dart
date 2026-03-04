// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_output_response.dart';

/// Result data returned by getLogAnalyticExportRequestRateByInterval.
class GetLogAnalyticExportRequestRateByIntervalResult {
  /// LogAnalyticsOutput
  final LogAnalyticsOutputResponse properties;

  /// Creates a new [GetLogAnalyticExportRequestRateByIntervalResult].
  /// [properties] LogAnalyticsOutput
  GetLogAnalyticExportRequestRateByIntervalResult({required this.properties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'properties': properties.toMap()};
  }

  factory GetLogAnalyticExportRequestRateByIntervalResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLogAnalyticExportRequestRateByIntervalResult(
      properties: LogAnalyticsOutputResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
