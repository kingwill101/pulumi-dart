// ignore_for_file: unused_element, unnecessary_cast

class CxAgentClientCertificateSettings {
  /// The name of the SecretManager secret version resource storing the passphrase. 'passphrase' should be left unset if the private key is not encrypted. Format: **projects/{project}/secrets/{secret}/versions/{version}**
  final String? passphrase;

  /// The name of the SecretManager secret version resource storing the private key encoded in PEM format. Format: **projects/{project}/secrets/{secret}/versions/{version}**
  final String privateKey;

  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines.
  final String sslCertificate;

  CxAgentClientCertificateSettings({
    this.passphrase,
    required this.privateKey,
    required this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passphraseValue = passphrase;
    if (passphraseValue != null) {
      map['passphrase'] = passphraseValue;
    }
    map['privateKey'] = privateKey;
    map['sslCertificate'] = sslCertificate;
    return map;
  }

  factory CxAgentClientCertificateSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentClientCertificateSettings(
      passphrase:
          map['passphrase'] == null ? null : map['passphrase'] as String,
      privateKey: map['privateKey'] as String,
      sslCertificate: map['sslCertificate'] as String,
    );
  }
}
