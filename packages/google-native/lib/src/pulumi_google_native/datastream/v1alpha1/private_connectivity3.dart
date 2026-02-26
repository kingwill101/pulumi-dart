// ignore_for_file: unused_element, unnecessary_cast

/// Private Connectivity
class PrivateConnectivity3 {
  final String? privateConnectionName;

  PrivateConnectivity3({
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

  factory PrivateConnectivity3.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivity3(
      privateConnectionName: map['privateConnectionName'] == null
          ? null
          : map['privateConnectionName'] as String,
    );
  }
}
