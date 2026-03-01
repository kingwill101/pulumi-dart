// ignore_for_file: unused_element, unnecessary_cast


class GetRecordsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final String? direction;
  /// Sort the DNS records by this key. This may be one of `domain`, `flags`, `name`, `port`,
  /// `priority`, `tag`, `ttl`, `type`, `value`, or `weight`.
  final String key;

  /// Creates a new [GetRecordsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the DNS records by this key. This may be one of `domain`, `flags`, `name`, `port`,
  GetRecordsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetRecordsSort.fromMap(Map<String, dynamic> map) {
    return GetRecordsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

