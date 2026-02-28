// ignore_for_file: unused_element, unnecessary_cast

/// This encapsulates a metric property of the form sum(message_count) where name is message_count and function is sum
class GoogleCloudApigeeV1CustomReportMetricResponse {
  /// aggregate function
  final String function;

  /// name of the metric
  final String name;

  /// Creates a new [GoogleCloudApigeeV1CustomReportMetricResponse].
  /// [function] aggregate function
  /// [name] name of the metric
  GoogleCloudApigeeV1CustomReportMetricResponse({
    required this.function,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['function'] = function;
    map['name'] = name;
    return map;
  }

  factory GoogleCloudApigeeV1CustomReportMetricResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1CustomReportMetricResponse(
      function: map['function'] as String,
      name: map['name'] as String,
    );
  }
}
