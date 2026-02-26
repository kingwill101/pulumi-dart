// ignore_for_file: unused_element, unnecessary_cast

/// Parameters for a latency threshold SLI.
class LatencyCriteria {
  /// Good service is defined to be the count of requests made to this service that return in no more than threshold.
  final String? threshold;

  LatencyCriteria({
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final thresholdValue = threshold;
    if (thresholdValue != null) {
      map['threshold'] = thresholdValue;
    }
    return map;
  }

  factory LatencyCriteria.fromMap(Map<String, dynamic> map) {
    return LatencyCriteria(
      threshold: map['threshold'] == null ? null : map['threshold'] as String,
    );
  }
}
