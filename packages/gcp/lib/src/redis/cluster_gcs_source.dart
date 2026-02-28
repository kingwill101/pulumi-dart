// ignore_for_file: unused_element, unnecessary_cast

class ClusterGcsSource {
  /// URIs of the GCS objects to import. Example: gs://bucket1/object1, gs://bucket2/folder2/object2
  final List<String> uris;

  /// Creates a new [ClusterGcsSource].
  /// [uris] URIs of the GCS objects to import. Example: gs://bucket1/object1, gs://bucket2/folder2/object2
  ClusterGcsSource({
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uris'] = uris;
    return map;
  }

  factory ClusterGcsSource.fromMap(Map<String, dynamic> map) {
    return ClusterGcsSource(
      uris: (map['uris'] as List).cast<String>(),
    );
  }
}
