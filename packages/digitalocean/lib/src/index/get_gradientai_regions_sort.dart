// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiRegionsSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGradientaiRegionsSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGradientaiRegionsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGradientaiRegionsSort.fromMap(Map<String, dynamic> map) {
    return GetGradientaiRegionsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

