// ignore_for_file: unused_element, unnecessary_cast

class ConnectivityTestSourceCloudRunRevision {
  /// A Cloud Run revision URI.
  final String? uri;

  ConnectivityTestSourceCloudRunRevision({
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

  factory ConnectivityTestSourceCloudRunRevision.fromMap(
      Map<String, dynamic> map) {
    return ConnectivityTestSourceCloudRunRevision(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
