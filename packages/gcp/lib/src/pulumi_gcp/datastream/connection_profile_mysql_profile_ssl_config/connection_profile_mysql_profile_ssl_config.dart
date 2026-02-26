// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileMysqlProfileSslConfig {
  /// PEM-encoded certificate of the CA that signed the source database
  /// server's certificate.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? caCertificate;

  /// (Output)
  /// Indicates whether the clientKey field is set.
  final bool? caCertificateSet;

  /// PEM-encoded certificate that will be used by the replica to
  /// authenticate against the source database server. If this field
  /// is used then the 'clientKey' and the 'caCertificate' fields are
  /// mandatory.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? clientCertificate;

  /// (Output)
  /// Indicates whether the clientCertificate field is set.
  final bool? clientCertificateSet;

  /// PEM-encoded private key associated with the Client Certificate.
  /// If this field is used then the 'client_certificate' and the
  /// 'ca_certificate' fields are mandatory.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? clientKey;

  /// (Output)
  /// Indicates whether the clientKey field is set.
  final bool? clientKeySet;

  ConnectionProfileMysqlProfileSslConfig({
    this.caCertificate,
    this.caCertificateSet,
    this.clientCertificate,
    this.clientCertificateSet,
    this.clientKey,
    this.clientKeySet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caCertificateValue = caCertificate;
    if (caCertificateValue != null) {
      map['caCertificate'] = caCertificateValue;
    }
    final caCertificateSetValue = caCertificateSet;
    if (caCertificateSetValue != null) {
      map['caCertificateSet'] = caCertificateSetValue;
    }
    final clientCertificateValue = clientCertificate;
    if (clientCertificateValue != null) {
      map['clientCertificate'] = clientCertificateValue;
    }
    final clientCertificateSetValue = clientCertificateSet;
    if (clientCertificateSetValue != null) {
      map['clientCertificateSet'] = clientCertificateSetValue;
    }
    final clientKeyValue = clientKey;
    if (clientKeyValue != null) {
      map['clientKey'] = clientKeyValue;
    }
    final clientKeySetValue = clientKeySet;
    if (clientKeySetValue != null) {
      map['clientKeySet'] = clientKeySetValue;
    }
    return map;
  }

  factory ConnectionProfileMysqlProfileSslConfig.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileMysqlProfileSslConfig(
      caCertificate:
          map['caCertificate'] == null ? null : map['caCertificate'] as String,
      caCertificateSet: map['caCertificateSet'] == null
          ? null
          : map['caCertificateSet'] as bool,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientCertificateSet: map['clientCertificateSet'] == null
          ? null
          : map['clientCertificateSet'] as bool,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      clientKeySet:
          map['clientKeySet'] == null ? null : map['clientKeySet'] as bool,
    );
  }
}
