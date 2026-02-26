// ignore_for_file: unused_element, unnecessary_cast

class ConnectionSslConfigClientPrivateKey {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  ConnectionSslConfigClientPrivateKey({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionSslConfigClientPrivateKey.fromMap(
      Map<String, dynamic> map) {
    return ConnectionSslConfigClientPrivateKey(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
