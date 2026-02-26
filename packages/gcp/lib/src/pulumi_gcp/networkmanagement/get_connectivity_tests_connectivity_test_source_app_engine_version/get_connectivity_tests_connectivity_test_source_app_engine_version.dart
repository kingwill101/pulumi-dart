// ignore_for_file: unused_element, unnecessary_cast

class GetConnectivityTestsConnectivityTestSourceAppEngineVersion {
  /// A Cloud Run revision URI.
  final String uri;

  GetConnectivityTestsConnectivityTestSourceAppEngineVersion({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GetConnectivityTestsConnectivityTestSourceAppEngineVersion.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTestSourceAppEngineVersion(
      uri: map['uri'] as String,
    );
  }
}
