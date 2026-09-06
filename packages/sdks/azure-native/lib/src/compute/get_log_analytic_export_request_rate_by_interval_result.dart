// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_output_response.dart';

/// Result data returned by getLogAnalyticExportRequestRateByInterval.
class GetLogAnalyticExportRequestRateByIntervalResult {
  /// LogAnalyticsOutput
  final LogAnalyticsOutputResponse? properties;

  /// Creates a new [GetLogAnalyticExportRequestRateByIntervalResult].
  /// [properties] LogAnalyticsOutput
  const GetLogAnalyticExportRequestRateByIntervalResult({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties?.toMap(),
    };
  }

  factory GetLogAnalyticExportRequestRateByIntervalResult.fromMap(Map<String, dynamic> map) {
    return GetLogAnalyticExportRequestRateByIntervalResult(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return LogAnalyticsOutputResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
