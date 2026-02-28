// ignore_for_file: unused_element, unnecessary_cast


class GetResourceCollectionTag {
  /// An AWS tag key that is used to identify the AWS resources that DevOps Guru analyzes.
  final String appBoundaryKey;
  /// Array of tag values.
  final List<String> tagValues;

  /// Creates a new [GetResourceCollectionTag].
  /// [appBoundaryKey] An AWS tag key that is used to identify the AWS resources that DevOps Guru analyzes.
  /// [tagValues] Array of tag values.
  GetResourceCollectionTag({
    required this.appBoundaryKey,
    required this.tagValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appBoundaryKey': appBoundaryKey,
      'tagValues': tagValues,
    };
  }

  factory GetResourceCollectionTag.fromMap(Map<String, dynamic> map) {
    return GetResourceCollectionTag(
      appBoundaryKey: map['appBoundaryKey'] as String,
      tagValues: (map['tagValues'] as List).cast<String>(),
    );
  }
}

