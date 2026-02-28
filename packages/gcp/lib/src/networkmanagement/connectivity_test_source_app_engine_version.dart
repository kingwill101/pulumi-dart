// ignore_for_file: unused_element, unnecessary_cast

class ConnectivityTestSourceAppEngineVersion {
  /// An App Engine service version name.
  final String? uri;

  /// Creates a new [ConnectivityTestSourceAppEngineVersion].
  /// [uri] An App Engine service version name.
  ConnectivityTestSourceAppEngineVersion({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory ConnectivityTestSourceAppEngineVersion.fromMap(
      Map<String, dynamic> map) {
    return ConnectivityTestSourceAppEngineVersion(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
