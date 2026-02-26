// ignore_for_file: unused_element, unnecessary_cast

class GetDiscoveredServiceServiceReference {
  /// Additional path under the resource URI.
  final String path;

  /// The underlying resource URI.
  final String uri;

  GetDiscoveredServiceServiceReference({
    required this.path,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['uri'] = uri;
    return map;
  }

  factory GetDiscoveredServiceServiceReference.fromMap(
      Map<String, dynamic> map) {
    return GetDiscoveredServiceServiceReference(
      path: map['path'] as String,
      uri: map['uri'] as String,
    );
  }
}
