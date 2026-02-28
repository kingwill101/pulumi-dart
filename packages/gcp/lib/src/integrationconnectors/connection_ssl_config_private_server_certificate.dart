// ignore_for_file: unused_element, unnecessary_cast


class ConnectionSslConfigPrivateServerCertificate {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  /// Creates a new [ConnectionSslConfigPrivateServerCertificate].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionSslConfigPrivateServerCertificate({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionSslConfigPrivateServerCertificate.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfigPrivateServerCertificate(
      secretVersion: map['secretVersion'] as String,
    );
  }
}

