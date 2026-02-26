// ignore_for_file: unused_element, unnecessary_cast

class GetConnectivityTestsConnectivityTestSourceCloudFunction {
  /// A Cloud Run revision URI.
  final String uri;

  GetConnectivityTestsConnectivityTestSourceCloudFunction({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GetConnectivityTestsConnectivityTestSourceCloudFunction.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTestSourceCloudFunction(
      uri: map['uri'] as String,
    );
  }
}
