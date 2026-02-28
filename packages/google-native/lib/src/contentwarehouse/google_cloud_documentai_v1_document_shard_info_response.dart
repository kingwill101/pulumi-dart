// ignore_for_file: unused_element, unnecessary_cast

/// For a large document, sharding may be performed to produce several document shards. Each document shard contains this field to detail which shard it is.
class GoogleCloudDocumentaiV1DocumentShardInfoResponse {
  /// Total number of shards.
  final String shardCount;

  /// The 0-based index of this shard.
  final String shardIndex;

  /// The index of the first character in Document.text in the overall document global text.
  final String textOffset;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentShardInfoResponse].
  /// [shardCount] Total number of shards.
  /// [shardIndex] The 0-based index of this shard.
  /// [textOffset] The index of the first character in Document.text in the overall document global text.
  GoogleCloudDocumentaiV1DocumentShardInfoResponse({
    required this.shardCount,
    required this.shardIndex,
    required this.textOffset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['shardCount'] = shardCount;
    map['shardIndex'] = shardIndex;
    map['textOffset'] = textOffset;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentShardInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentShardInfoResponse(
      shardCount: map['shardCount'] as String,
      shardIndex: map['shardIndex'] as String,
      textOffset: map['textOffset'] as String,
    );
  }
}
