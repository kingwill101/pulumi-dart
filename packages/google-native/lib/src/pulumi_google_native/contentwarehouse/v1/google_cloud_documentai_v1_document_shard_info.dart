// ignore_for_file: unused_element, unnecessary_cast

/// For a large document, sharding may be performed to produce several document shards. Each document shard contains this field to detail which shard it is.
class GoogleCloudDocumentaiV1DocumentShardInfo {
  /// Total number of shards.
  final String? shardCount;

  /// The 0-based index of this shard.
  final String? shardIndex;

  /// The index of the first character in Document.text in the overall document global text.
  final String? textOffset;

  GoogleCloudDocumentaiV1DocumentShardInfo({
    this.shardCount,
    this.shardIndex,
    this.textOffset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final shardCountValue = shardCount;
    if (shardCountValue != null) {
      map['shardCount'] = shardCountValue;
    }
    final shardIndexValue = shardIndex;
    if (shardIndexValue != null) {
      map['shardIndex'] = shardIndexValue;
    }
    final textOffsetValue = textOffset;
    if (textOffsetValue != null) {
      map['textOffset'] = textOffsetValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentShardInfo.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentShardInfo(
      shardCount:
          map['shardCount'] == null ? null : map['shardCount'] as String,
      shardIndex:
          map['shardIndex'] == null ? null : map['shardIndex'] as String,
      textOffset:
          map['textOffset'] == null ? null : map['textOffset'] as String,
    );
  }
}
