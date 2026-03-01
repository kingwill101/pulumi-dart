// ignore_for_file: unused_element, unnecessary_cast

import 'cache_directory_ldap_bind.dart';

class CacheDirectoryLdap {
  /// The base distinguished name (DN) for the LDAP domain.
  final String baseDn;
  /// A `bind` block as defined above.
  final CacheDirectoryLdapBind? bind;
  /// The URI of the CA certificate to validate the LDAP secure connection.
  final String? certificateValidationUri;
  /// Whether the certificate should be automatically downloaded. This can be set to `true` only when `certificate_validation_uri` is provided.
  final bool? downloadCertificateAutomatically;
  /// Whether the LDAP connection should be encrypted?
  final bool? encrypted;
  /// The FQDN or IP address of the LDAP server.
  final String server;

  /// Creates a new [CacheDirectoryLdap].
  /// [baseDn] The base distinguished name (DN) for the LDAP domain.
  /// [bind] A `bind` block as defined above.
  /// [certificateValidationUri] The URI of the CA certificate to validate the LDAP secure connection.
  /// [downloadCertificateAutomatically] Whether the certificate should be automatically downloaded. This can be set to `true` only when `certificate_validation_uri` is provided.
  /// [encrypted] Whether the LDAP connection should be encrypted?
  /// [server] The FQDN or IP address of the LDAP server.
  CacheDirectoryLdap({
    required this.baseDn,
    this.bind,
    this.certificateValidationUri,
    this.downloadCertificateAutomatically,
    this.encrypted,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseDn': baseDn,
      'bind': ?bind == null ? null : bind!.toMap(),
      'certificateValidationUri': ?certificateValidationUri,
      'downloadCertificateAutomatically': ?downloadCertificateAutomatically,
      'encrypted': ?encrypted,
      'server': server,
    };
  }

  factory CacheDirectoryLdap.fromMap(Map<String, dynamic> map) {
    return CacheDirectoryLdap(
      baseDn: map['baseDn'] as String,
      bind: map['bind'] == null ? null : CacheDirectoryLdapBind.fromMap((map['bind'] as Map).cast<String, dynamic>()),
      certificateValidationUri: map['certificateValidationUri'] == null ? null : map['certificateValidationUri'] as String,
      downloadCertificateAutomatically: map['downloadCertificateAutomatically'] == null ? null : map['downloadCertificateAutomatically'] as bool,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      server: map['server'] as String,
    );
  }
}

