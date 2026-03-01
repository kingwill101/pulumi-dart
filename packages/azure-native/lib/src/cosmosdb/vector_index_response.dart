// ignore_for_file: unused_element, unnecessary_cast


class VectorIndexResponse {
  /// This is the size of the candidate list of approximate neighbors stored while building the DiskANN index as part of the optimization processes. Large values may improve recall at the expense of latency. This is only applicable for the diskANN vector index type.
  final double? indexingSearchListSize;
  /// The path to the vector field in the document.
  final String path;
  /// The number of bytes used in product quantization of the vectors. A larger value may result in better recall for vector searches at the expense of latency. This is only applicable for the quantizedFlat and diskANN vector index types.
  final double? quantizationByteSize;
  /// The index type of the vector. Currently, flat, diskANN, and quantizedFlat are supported.
  final String type;
  /// Array of shard keys for the vector index. This is only applicable for the quantizedFlat and diskANN vector index types.
  final List<String>? vectorIndexShardKey;

  /// Creates a new [VectorIndexResponse].
  /// [indexingSearchListSize] This is the size of the candidate list of approximate neighbors stored while building the DiskANN index as part of the optimization processes. Large values may improve recall at the expense of latency. This is only applicable for the diskANN vector index type.
  /// [path] The path to the vector field in the document.
  /// [quantizationByteSize] The number of bytes used in product quantization of the vectors. A larger value may result in better recall for vector searches at the expense of latency. This is only applicable for the quantizedFlat and diskANN vector index types.
  /// [type] The index type of the vector. Currently, flat, diskANN, and quantizedFlat are supported.
  /// [vectorIndexShardKey] Array of shard keys for the vector index. This is only applicable for the quantizedFlat and diskANN vector index types.
  VectorIndexResponse({
    this.indexingSearchListSize,
    required this.path,
    this.quantizationByteSize,
    required this.type,
    this.vectorIndexShardKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexingSearchListSize': ?indexingSearchListSize,
      'path': path,
      'quantizationByteSize': ?quantizationByteSize,
      'type': type,
      'vectorIndexShardKey': ?vectorIndexShardKey,
    };
  }

  factory VectorIndexResponse.fromMap(Map<String, dynamic> map) {
    return VectorIndexResponse(
      indexingSearchListSize: map['indexingSearchListSize'] == null ? null : map['indexingSearchListSize'] as double,
      path: map['path'] as String,
      quantizationByteSize: map['quantizationByteSize'] == null ? null : map['quantizationByteSize'] as double,
      type: map['type'] as String,
      vectorIndexShardKey: map['vectorIndexShardKey'] == null ? null : (map['vectorIndexShardKey'] as List).cast<String>(),
    );
  }
}

