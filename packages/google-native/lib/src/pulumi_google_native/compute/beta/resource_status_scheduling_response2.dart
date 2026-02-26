// ignore_for_file: unused_element, unnecessary_cast

class ResourceStatusSchedulingResponse2 {
  /// Time in future when the instance will be terminated in RFC3339 text format.
  final String terminationTimestamp;

  ResourceStatusSchedulingResponse2({
    required this.terminationTimestamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['terminationTimestamp'] = terminationTimestamp;
    return map;
  }

  factory ResourceStatusSchedulingResponse2.fromMap(Map<String, dynamic> map) {
    return ResourceStatusSchedulingResponse2(
      terminationTimestamp: map['terminationTimestamp'] as String,
    );
  }
}
