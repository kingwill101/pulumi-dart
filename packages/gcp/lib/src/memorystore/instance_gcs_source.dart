// ignore_for_file: unused_element, unnecessary_cast

class InstanceGcsSource {
  /// URIs of the GCS objects to import.
  /// Example: gs://bucket1/object1, gs://bucket2/folder2/object2
  final List<String> uris;

  /// Creates a new [InstanceGcsSource].
  /// [uris] URIs of the GCS objects to import.
  InstanceGcsSource({
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uris'] = uris;
    return map;
  }

  factory InstanceGcsSource.fromMap(Map<String, dynamic> map) {
    return InstanceGcsSource(
      uris: (map['uris'] as List).cast<String>(),
    );
  }
}
