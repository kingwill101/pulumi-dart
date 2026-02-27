// ignore_for_file: unused_element, unnecessary_cast

/// Private Connectivity
class PrivateConnectivityDatastreamV1alpha1 {
  final String? privateConnectionName;

  PrivateConnectivityDatastreamV1alpha1({
    this.privateConnectionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final privateConnectionNameValue = privateConnectionName;
    if (privateConnectionNameValue != null) {
      map['privateConnectionName'] = privateConnectionNameValue;
    }
    return map;
  }

  factory PrivateConnectivityDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return PrivateConnectivityDatastreamV1alpha1(
      privateConnectionName: map['privateConnectionName'] == null
          ? null
          : map['privateConnectionName'] as String,
    );
  }
}
