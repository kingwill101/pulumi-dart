// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAnnotation.
class GetAnnotationRapidmigrationassessmentV1Result {
  /// Create time stamp.
  final String createTime;

  /// Labels as key value pairs.
  final Map<String, String> labels;

  /// name of resource.
  final String name;

  /// Type of an annotation.
  final String type;

  /// Update time stamp.
  final String updateTime;

  GetAnnotationRapidmigrationassessmentV1Result({
    required this.createTime,
    required this.labels,
    required this.name,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['labels'] = labels;
    map['name'] = name;
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetAnnotationRapidmigrationassessmentV1Result.fromMap(
      Map<String, dynamic> map) {
    return GetAnnotationRapidmigrationassessmentV1Result(
      createTime: map['createTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
