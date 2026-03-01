// ignore_for_file: unused_element, unnecessary_cast

class GetAiIndexIndexStat {
  /// The number of shards in the Index.
  final int shardsCount;

  /// The number of vectors in the Index.
  final String vectorsCount;

  /// Creates a new [GetAiIndexIndexStat].
  /// [shardsCount] The number of shards in the Index.
  /// [vectorsCount] The number of vectors in the Index.
  GetAiIndexIndexStat({required this.shardsCount, required this.vectorsCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shardsCount': shardsCount,
      'vectorsCount': vectorsCount,
    };
  }

  factory GetAiIndexIndexStat.fromMap(Map<String, dynamic> map) {
    return GetAiIndexIndexStat(
      shardsCount: map['shardsCount'] as int,
      vectorsCount: map['vectorsCount'] as String,
    );
  }
}
