// ignore_for_file: unused_element, unnecessary_cast


class GetSizesSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final String? direction;
  /// Sort the sizes by this key. This may be one of `slug`,
  /// `memory`, `vcpus`, `disk`, `transfer`, `price_monthly`, or `price_hourly`.
  final String key;

  /// Creates a new [GetSizesSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the sizes by this key. This may be one of `slug`,
  GetSizesSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetSizesSort.fromMap(Map<String, dynamic> map) {
    return GetSizesSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

