// ignore_for_file: unused_element, unnecessary_cast

class GetConnectivityTestsConnectivityTestSourceCloudFunction {
  /// A Cloud Run revision URI.
  final String uri;

  /// Creates a new [GetConnectivityTestsConnectivityTestSourceCloudFunction].
  /// [uri] A Cloud Run revision URI.
  GetConnectivityTestsConnectivityTestSourceCloudFunction({required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory GetConnectivityTestsConnectivityTestSourceCloudFunction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectivityTestsConnectivityTestSourceCloudFunction(
      uri: map['uri'] as String,
    );
  }
}
