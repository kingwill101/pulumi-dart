// ignore_for_file: unused_element, unnecessary_cast

/// Private Connectivity
class PrivateConnectivityResponse3 {
  final String privateConnectionName;

  PrivateConnectivityResponse3({
    required this.privateConnectionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateConnectionName'] = privateConnectionName;
    return map;
  }

  factory PrivateConnectivityResponse3.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivityResponse3(
      privateConnectionName: map['privateConnectionName'] as String,
    );
  }
}
