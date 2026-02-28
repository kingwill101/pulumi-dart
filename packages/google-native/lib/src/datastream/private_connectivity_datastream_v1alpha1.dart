// ignore_for_file: unused_element, unnecessary_cast


/// Private Connectivity
class PrivateConnectivityDatastreamV1alpha1 {
  final String? privateConnectionName;

  /// Creates a new [PrivateConnectivityDatastreamV1alpha1].
  /// [privateConnectionName] Optional.
  PrivateConnectivityDatastreamV1alpha1({
    this.privateConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnectionName': ?privateConnectionName,
    };
  }

  factory PrivateConnectivityDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivityDatastreamV1alpha1(
      privateConnectionName: map['privateConnectionName'] == null ? null : map['privateConnectionName'] as String,
    );
  }
}

