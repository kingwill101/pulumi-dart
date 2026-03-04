// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VectorIndex {
  /// This is the size of the candidate list of approximate neighbors stored while building the DiskANN index as part of the optimization processes. Large values may improve recall at the expense of latency. This is only applicable for the diskANN vector index type.
  final pulumi.Input<double>? indexingSearchListSize;

  /// The path to the vector field in the document.
  final pulumi.Input<String> path;

  /// The number of bytes used in product quantization of the vectors. A larger value may result in better recall for vector searches at the expense of latency. This is only applicable for the quantizedFlat and diskANN vector index types.
  final pulumi.Input<double>? quantizationByteSize;

  /// The index type of the vector. Currently, flat, diskANN, and quantizedFlat are supported.
  final pulumi.Input<String> type;

  /// Array of shard keys for the vector index. This is only applicable for the quantizedFlat and diskANN vector index types.
  final pulumi.Input<List<String>>? vectorIndexShardKey;

  /// Creates a new [VectorIndex].
  /// [indexingSearchListSize] This is the size of the candidate list of approximate neighbors stored while building the DiskANN index as part of the optimization processes. Large values may improve recall at the expense of latency. This is only applicable for the diskANN vector index type.
  /// [path] The path to the vector field in the document.
  /// [quantizationByteSize] The number of bytes used in product quantization of the vectors. A larger value may result in better recall for vector searches at the expense of latency. This is only applicable for the quantizedFlat and diskANN vector index types.
  /// [type] The index type of the vector. Currently, flat, diskANN, and quantizedFlat are supported.
  /// [vectorIndexShardKey] Array of shard keys for the vector index. This is only applicable for the quantizedFlat and diskANN vector index types.
  VectorIndex({
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

  factory VectorIndex.fromMap(Map<String, dynamic> map) {
    return VectorIndex(
      indexingSearchListSize: (() {
        final guardedValue = map['indexingSearchListSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      quantizationByteSize: (() {
        final guardedValue = map['quantizationByteSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vectorIndexShardKey: (() {
        final guardedValue = map['vectorIndexShardKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
