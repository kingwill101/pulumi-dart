// ignore_for_file: unused_element, unnecessary_cast


class GetProjectsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final String? direction;
  /// Sort the projects by this key. This may be one of `name`,
  /// `purpose`, `description`, or `environment`.
  final String key;

  /// Creates a new [GetProjectsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the projects by this key. This may be one of `name`,
  GetProjectsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetProjectsSort.fromMap(Map<String, dynamic> map) {
    return GetProjectsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

