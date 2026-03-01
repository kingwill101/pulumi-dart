// ignore_for_file: unused_element, unnecessary_cast

class ConnectivityTestSourceCloudFunction {
  /// A Cloud Function name.
  final String? uri;

  /// Creates a new [ConnectivityTestSourceCloudFunction].
  /// [uri] A Cloud Function name.
  ConnectivityTestSourceCloudFunction({this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': ?uri};
  }

  factory ConnectivityTestSourceCloudFunction.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectivityTestSourceCloudFunction(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
