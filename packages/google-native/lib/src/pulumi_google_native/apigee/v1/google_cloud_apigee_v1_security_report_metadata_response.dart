// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for the security report.
class GoogleCloudApigeeV1SecurityReportMetadataResponse {
  /// Dimensions of the SecurityReport.
  final List<String> dimensions;

  /// End timestamp of the query range.
  final String endTimestamp;

  /// Metrics of the SecurityReport. Example: ["name:bot_count,func:sum,alias:sum_bot_count"]
  final List<String> metrics;

  /// MIME type / Output format.
  final String mimeType;

  /// Start timestamp of the query range.
  final String startTimestamp;

  /// Query GroupBy time unit. Example: "seconds", "minute", "hour"
  final String timeUnit;

  GoogleCloudApigeeV1SecurityReportMetadataResponse({
    required this.dimensions,
    required this.endTimestamp,
    required this.metrics,
    required this.mimeType,
    required this.startTimestamp,
    required this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensions'] = dimensions;
    map['endTimestamp'] = endTimestamp;
    map['metrics'] = metrics;
    map['mimeType'] = mimeType;
    map['startTimestamp'] = startTimestamp;
    map['timeUnit'] = timeUnit;
    return map;
  }

  factory GoogleCloudApigeeV1SecurityReportMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityReportMetadataResponse(
      dimensions: (map['dimensions'] as List).cast<String>(),
      endTimestamp: map['endTimestamp'] as String,
      metrics: (map['metrics'] as List).cast<String>(),
      mimeType: map['mimeType'] as String,
      startTimestamp: map['startTimestamp'] as String,
      timeUnit: map['timeUnit'] as String,
    );
  }
}
