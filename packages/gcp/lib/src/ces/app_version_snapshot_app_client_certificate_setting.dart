// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppClientCertificateSetting {
  /// (Output)
  /// The passphrase to decrypt the private key.
  /// Should be left unset if the private key is not encrypted.
  final String? passphrase;

  /// (Output)
  /// The name of the SecretManager secret version resource
  /// storing the private key encoded in PEM format.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}
  final String? privateKey;

  /// (Output)
  /// The TLS certificate encoded in PEM format.
  /// This string must include the begin header and end footer lines.
  final String? tlsCertificate;

  /// Creates a new [AppVersionSnapshotAppClientCertificateSetting].
  /// [passphrase] (Output)
  /// [privateKey] (Output)
  /// [tlsCertificate] (Output)
  AppVersionSnapshotAppClientCertificateSetting({
    this.passphrase,
    this.privateKey,
    this.tlsCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passphraseValue = passphrase;
    if (passphraseValue != null) {
      map['passphrase'] = passphraseValue;
    }
    final privateKeyValue = privateKey;
    if (privateKeyValue != null) {
      map['privateKey'] = privateKeyValue;
    }
    final tlsCertificateValue = tlsCertificate;
    if (tlsCertificateValue != null) {
      map['tlsCertificate'] = tlsCertificateValue;
    }
    return map;
  }

  factory AppVersionSnapshotAppClientCertificateSetting.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppClientCertificateSetting(
      passphrase:
          map['passphrase'] == null ? null : map['passphrase'] as String,
      privateKey:
          map['privateKey'] == null ? null : map['privateKey'] as String,
      tlsCertificate: map['tlsCertificate'] == null
          ? null
          : map['tlsCertificate'] as String,
    );
  }
}
