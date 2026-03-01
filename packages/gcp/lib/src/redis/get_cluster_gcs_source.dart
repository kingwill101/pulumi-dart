// ignore_for_file: unused_element, unnecessary_cast

class GetClusterGcsSource {
  /// URIs of the GCS objects to import. Example: gs://bucket1/object1, gs://bucket2/folder2/object2
  final List<String> uris;

  /// Creates a new [GetClusterGcsSource].
  /// [uris] URIs of the GCS objects to import. Example: gs://bucket1/object1, gs://bucket2/folder2/object2
  GetClusterGcsSource({required this.uris});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uris': uris};
  }

  factory GetClusterGcsSource.fromMap(Map<String, dynamic> map) {
    return GetClusterGcsSource(uris: (map['uris'] as List).cast<String>());
  }
}
