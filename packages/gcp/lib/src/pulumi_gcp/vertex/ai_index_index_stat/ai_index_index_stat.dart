// ignore_for_file: unused_element, unnecessary_cast

class AiIndexIndexStat {
  /// (Output)
  /// The number of shards in the Index.
  final int? shardsCount;

  /// (Output)
  /// The number of vectors in the Index.
  final String? vectorsCount;

  AiIndexIndexStat({
    this.shardsCount,
    this.vectorsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final shardsCountValue = shardsCount;
    if (shardsCountValue != null) {
      map['shardsCount'] = shardsCountValue;
    }
    final vectorsCountValue = vectorsCount;
    if (vectorsCountValue != null) {
      map['vectorsCount'] = vectorsCountValue;
    }
    return map;
  }

  factory AiIndexIndexStat.fromMap(Map<String, dynamic> map) {
    return AiIndexIndexStat(
      shardsCount:
          map['shardsCount'] == null ? null : map['shardsCount'] as int,
      vectorsCount:
          map['vectorsCount'] == null ? null : map['vectorsCount'] as String,
    );
  }
}
