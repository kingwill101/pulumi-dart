// ignore_for_file: unused_element, unnecessary_cast

class AiIndexIndexStat {
  /// (Output)
  /// The number of shards in the Index.
  final int? shardsCount;

  /// (Output)
  /// The number of vectors in the Index.
  final String? vectorsCount;

  /// Creates a new [AiIndexIndexStat].
  /// [shardsCount] (Output)
  /// [vectorsCount] (Output)
  AiIndexIndexStat({this.shardsCount, this.vectorsCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shardsCount': ?shardsCount,
      'vectorsCount': ?vectorsCount,
    };
  }

  factory AiIndexIndexStat.fromMap(Map<String, dynamic> map) {
    return AiIndexIndexStat(
      shardsCount: map['shardsCount'] == null
          ? null
          : map['shardsCount'] as int,
      vectorsCount: map['vectorsCount'] == null
          ? null
          : map['vectorsCount'] as String,
    );
  }
}
