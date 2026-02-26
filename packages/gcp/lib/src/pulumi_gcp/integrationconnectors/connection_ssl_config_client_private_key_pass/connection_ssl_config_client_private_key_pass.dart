// ignore_for_file: unused_element, unnecessary_cast

class ConnectionSslConfigClientPrivateKeyPass {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  ConnectionSslConfigClientPrivateKeyPass({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionSslConfigClientPrivateKeyPass.fromMap(
      Map<String, dynamic> map) {
    return ConnectionSslConfigClientPrivateKeyPass(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
