// ignore_for_file: unused_element, unnecessary_cast

/// Stats of the Index.
class GoogleCloudAiplatformV1IndexStatsResponse {
  /// The number of shards in the Index.
  final int shardsCount;

  /// The number of vectors in the Index.
  final String vectorsCount;

  GoogleCloudAiplatformV1IndexStatsResponse({
    required this.shardsCount,
    required this.vectorsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['shardsCount'] = shardsCount;
    map['vectorsCount'] = vectorsCount;
    return map;
  }

  factory GoogleCloudAiplatformV1IndexStatsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1IndexStatsResponse(
      shardsCount: map['shardsCount'] as int,
      vectorsCount: map['vectorsCount'] as String,
    );
  }
}
