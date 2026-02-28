// ignore_for_file: unused_element, unnecessary_cast

class ResourceStatusSchedulingResponseComputeBeta {
  /// Time in future when the instance will be terminated in RFC3339 text format.
  final String terminationTimestamp;

  /// Creates a new [ResourceStatusSchedulingResponseComputeBeta].
  /// [terminationTimestamp] Time in future when the instance will be terminated in RFC3339 text format.
  ResourceStatusSchedulingResponseComputeBeta({
    required this.terminationTimestamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['terminationTimestamp'] = terminationTimestamp;
    return map;
  }

  factory ResourceStatusSchedulingResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourceStatusSchedulingResponseComputeBeta(
      terminationTimestamp: map['terminationTimestamp'] as String,
    );
  }
}
