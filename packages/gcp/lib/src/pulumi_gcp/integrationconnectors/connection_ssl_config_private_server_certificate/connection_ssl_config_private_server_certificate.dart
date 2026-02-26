// ignore_for_file: unused_element, unnecessary_cast

class ConnectionSslConfigPrivateServerCertificate {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  ConnectionSslConfigPrivateServerCertificate({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionSslConfigPrivateServerCertificate.fromMap(
      Map<String, dynamic> map) {
    return ConnectionSslConfigPrivateServerCertificate(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
