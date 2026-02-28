// ignore_for_file: unused_element, unnecessary_cast

class GetConnectivityTestsConnectivityTestSourceCloudRunRevision {
  /// A Cloud Run revision URI.
  final String uri;

  /// Creates a new [GetConnectivityTestsConnectivityTestSourceCloudRunRevision].
  /// [uri] A Cloud Run revision URI.
  GetConnectivityTestsConnectivityTestSourceCloudRunRevision({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GetConnectivityTestsConnectivityTestSourceCloudRunRevision.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTestSourceCloudRunRevision(
      uri: map['uri'] as String,
    );
  }
}
