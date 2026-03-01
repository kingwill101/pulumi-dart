// ignore_for_file: unused_element, unnecessary_cast


/// Manual TLS server certificate management through a defined secret
class ManualCertMethod {
  /// secret containing TLS cert.
  final String secretName;
  /// namespace of secret; omit to use default namespace.
  final String? secretNamespace;

  /// Creates a new [ManualCertMethod].
  /// [secretName] secret containing TLS cert.
  /// [secretNamespace] namespace of secret; omit to use default namespace.
  ManualCertMethod({
    required this.secretName,
    this.secretNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'secretNamespace': ?secretNamespace,
    };
  }

  factory ManualCertMethod.fromMap(Map<String, dynamic> map) {
    return ManualCertMethod(
      secretName: map['secretName'] as String,
      secretNamespace: map['secretNamespace'] == null ? null : map['secretNamespace'] as String,
    );
  }
}

