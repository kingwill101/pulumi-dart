// ignore_for_file: unused_element, unnecessary_cast

class ConnectivityTestSourceCloudFunction {
  /// A Cloud Function name.
  final String? uri;

  ConnectivityTestSourceCloudFunction({
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

  factory ConnectivityTestSourceCloudFunction.fromMap(
      Map<String, dynamic> map) {
    return ConnectivityTestSourceCloudFunction(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
