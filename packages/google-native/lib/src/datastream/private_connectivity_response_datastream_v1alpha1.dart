// ignore_for_file: unused_element, unnecessary_cast


/// Private Connectivity
class PrivateConnectivityResponseDatastreamV1alpha1 {
  final String privateConnectionName;

  /// Creates a new [PrivateConnectivityResponseDatastreamV1alpha1].
  /// [privateConnectionName] Required.
  PrivateConnectivityResponseDatastreamV1alpha1({
    required this.privateConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnectionName': privateConnectionName,
    };
  }

  factory PrivateConnectivityResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivityResponseDatastreamV1alpha1(
      privateConnectionName: map['privateConnectionName'] as String,
    );
  }
}

