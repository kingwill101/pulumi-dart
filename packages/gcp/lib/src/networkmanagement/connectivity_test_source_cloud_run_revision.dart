// ignore_for_file: unused_element, unnecessary_cast

class ConnectivityTestSourceCloudRunRevision {
  /// A Cloud Run revision URI.
  final String? uri;

  /// Creates a new [ConnectivityTestSourceCloudRunRevision].
  /// [uri] A Cloud Run revision URI.
  ConnectivityTestSourceCloudRunRevision({this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': ?uri};
  }

  factory ConnectivityTestSourceCloudRunRevision.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectivityTestSourceCloudRunRevision(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
