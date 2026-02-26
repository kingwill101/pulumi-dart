// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudApigeeV1QueryMetadataResponse {
  /// Dimensions of the AsyncQuery.
  final List<String> dimensions;

  /// End timestamp of the query range.
  final String endTimestamp;

  /// Metrics of the AsyncQuery. Example: ["name:message_count,func:sum,alias:sum_message_count"]
  final List<String> metrics;

  /// Output format.
  final String outputFormat;

  /// Start timestamp of the query range.
  final String startTimestamp;

  /// Query GroupBy time unit.
  final String timeUnit;

  GoogleCloudApigeeV1QueryMetadataResponse({
    required this.dimensions,
    required this.endTimestamp,
    required this.metrics,
    required this.outputFormat,
    required this.startTimestamp,
    required this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensions'] = dimensions;
    map['endTimestamp'] = endTimestamp;
    map['metrics'] = metrics;
    map['outputFormat'] = outputFormat;
    map['startTimestamp'] = startTimestamp;
    map['timeUnit'] = timeUnit;
    return map;
  }

  factory GoogleCloudApigeeV1QueryMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1QueryMetadataResponse(
      dimensions: (map['dimensions'] as List).cast<String>(),
      endTimestamp: map['endTimestamp'] as String,
      metrics: (map['metrics'] as List).cast<String>(),
      outputFormat: map['outputFormat'] as String,
      startTimestamp: map['startTimestamp'] as String,
      timeUnit: map['timeUnit'] as String,
    );
  }
}
