// ignore_for_file: unused_element, unnecessary_cast


class GetSpacesBucketsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final String? direction;
  /// Sort the images by this key. This may be one of `bucket_domain_name`, `name`, `region`, or `urn`.
  final String key;

  /// Creates a new [GetSpacesBucketsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the images by this key. This may be one of `bucket_domain_name`, `name`, `region`, or `urn`.
  GetSpacesBucketsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetSpacesBucketsSort.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

