// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a read pool instance.
class ReadPoolConfigResponse {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final int nodeCount;

  ReadPoolConfigResponse({
    required this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeCount'] = nodeCount;
    return map;
  }

  factory ReadPoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfigResponse(
      nodeCount: map['nodeCount'] as int,
    );
  }
}
