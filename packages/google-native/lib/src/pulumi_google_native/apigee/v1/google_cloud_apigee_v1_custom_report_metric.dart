// ignore_for_file: unused_element, unnecessary_cast

/// This encapsulates a metric property of the form sum(message_count) where name is message_count and function is sum
class GoogleCloudApigeeV1CustomReportMetric {
  /// aggregate function
  final String? function;

  /// name of the metric
  final String? name;

  GoogleCloudApigeeV1CustomReportMetric({
    this.function,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final functionValue = function;
    if (functionValue != null) {
      map['function'] = functionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1CustomReportMetric.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1CustomReportMetric(
      function: map['function'] == null ? null : map['function'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
