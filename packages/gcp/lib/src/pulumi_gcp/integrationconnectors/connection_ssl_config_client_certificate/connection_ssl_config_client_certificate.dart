// ignore_for_file: unused_element, unnecessary_cast

class ConnectionSslConfigClientCertificate {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  ConnectionSslConfigClientCertificate({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionSslConfigClientCertificate.fromMap(
      Map<String, dynamic> map) {
    return ConnectionSslConfigClientCertificate(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
