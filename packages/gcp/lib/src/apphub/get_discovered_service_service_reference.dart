// ignore_for_file: unused_element, unnecessary_cast

class GetDiscoveredServiceServiceReference {
  /// Additional path under the resource URI.
  final String path;

  /// The underlying resource URI.
  final String uri;

  /// Creates a new [GetDiscoveredServiceServiceReference].
  /// [path] Additional path under the resource URI.
  /// [uri] The underlying resource URI.
  GetDiscoveredServiceServiceReference({required this.path, required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'uri': uri};
  }

  factory GetDiscoveredServiceServiceReference.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDiscoveredServiceServiceReference(
      path: map['path'] as String,
      uri: map['uri'] as String,
    );
  }
}
