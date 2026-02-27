// ignore_for_file: unused_element, unnecessary_cast

/// Private Connectivity
class PrivateConnectivityResponseDatastreamV1alpha1 {
  final String privateConnectionName;

  PrivateConnectivityResponseDatastreamV1alpha1({
    required this.privateConnectionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateConnectionName'] = privateConnectionName;
    return map;
  }

  factory PrivateConnectivityResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return PrivateConnectivityResponseDatastreamV1alpha1(
      privateConnectionName: map['privateConnectionName'] as String,
    );
  }
}
