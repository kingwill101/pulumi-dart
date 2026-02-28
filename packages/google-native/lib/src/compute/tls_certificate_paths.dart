// ignore_for_file: unused_element, unnecessary_cast

/// [Deprecated] The paths to the mounted TLS Certificates and private key. The paths to the mounted TLS Certificates and private key.
class TlsCertificatePaths {
  /// The path to the file holding the client or server TLS certificate to use.
  final String? certificatePath;

  /// The path to the file holding the client or server private key.
  final String? privateKeyPath;

  /// Creates a new [TlsCertificatePaths].
  /// [certificatePath] The path to the file holding the client or server TLS certificate to use.
  /// [privateKeyPath] The path to the file holding the client or server private key.
  TlsCertificatePaths({
    this.certificatePath,
    this.privateKeyPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificatePathValue = certificatePath;
    if (certificatePathValue != null) {
      map['certificatePath'] = certificatePathValue;
    }
    final privateKeyPathValue = privateKeyPath;
    if (privateKeyPathValue != null) {
      map['privateKeyPath'] = privateKeyPathValue;
    }
    return map;
  }

  factory TlsCertificatePaths.fromMap(Map<String, dynamic> map) {
    return TlsCertificatePaths(
      certificatePath: map['certificatePath'] == null
          ? null
          : map['certificatePath'] as String,
      privateKeyPath: map['privateKeyPath'] == null
          ? null
          : map['privateKeyPath'] as String,
    );
  }
}
