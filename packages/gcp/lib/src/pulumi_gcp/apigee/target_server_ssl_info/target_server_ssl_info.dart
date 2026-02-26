// ignore_for_file: unused_element, unnecessary_cast

import '../target_server_ssl_info_common_name/target_server_ssl_info_common_name.dart';

class TargetServerSSlInfo {
  /// The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3.
  final List<String>? ciphers;

  /// Enables two-way TLS.
  final bool? clientAuthEnabled;

  /// The TLS Common Name of the certificate.
  /// Structure is documented below.
  final TargetServerSSlInfoCommonName? commonName;

  /// Enables TLS. If false, neither one-way nor two-way TLS will be enabled.
  final bool enabled;

  /// If true, TLS is strictly enforced.
  final bool? enforce;

  /// If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails.
  final bool? ignoreValidationErrors;

  /// Required if clientAuthEnabled is true. The resource ID for the alias containing the private key and cert.
  final String? keyAlias;

  /// Required if clientAuthEnabled is true. The resource ID of the keystore.
  final String? keyStore;

  /// The TLS versioins to be used.
  final List<String>? protocols;

  /// The resource ID of the truststore.
  final String? trustStore;

  TargetServerSSlInfo({
    this.ciphers,
    this.clientAuthEnabled,
    this.commonName,
    required this.enabled,
    this.enforce,
    this.ignoreValidationErrors,
    this.keyAlias,
    this.keyStore,
    this.protocols,
    this.trustStore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ciphersValue = ciphers;
    if (ciphersValue != null) {
      map['ciphers'] = ciphersValue;
    }
    final clientAuthEnabledValue = clientAuthEnabled;
    if (clientAuthEnabledValue != null) {
      map['clientAuthEnabled'] = clientAuthEnabledValue;
    }
    final commonNameValue = commonName;
    if (commonNameValue != null) {
      map['commonName'] = commonNameValue.toMap();
    }
    map['enabled'] = enabled;
    final enforceValue = enforce;
    if (enforceValue != null) {
      map['enforce'] = enforceValue;
    }
    final ignoreValidationErrorsValue = ignoreValidationErrors;
    if (ignoreValidationErrorsValue != null) {
      map['ignoreValidationErrors'] = ignoreValidationErrorsValue;
    }
    final keyAliasValue = keyAlias;
    if (keyAliasValue != null) {
      map['keyAlias'] = keyAliasValue;
    }
    final keyStoreValue = keyStore;
    if (keyStoreValue != null) {
      map['keyStore'] = keyStoreValue;
    }
    final protocolsValue = protocols;
    if (protocolsValue != null) {
      map['protocols'] = protocolsValue;
    }
    final trustStoreValue = trustStore;
    if (trustStoreValue != null) {
      map['trustStore'] = trustStoreValue;
    }
    return map;
  }

  factory TargetServerSSlInfo.fromMap(Map<String, dynamic> map) {
    return TargetServerSSlInfo(
      ciphers: map['ciphers'] == null
          ? null
          : (map['ciphers'] as List).cast<String>(),
      clientAuthEnabled: map['clientAuthEnabled'] == null
          ? null
          : map['clientAuthEnabled'] as bool,
      commonName: map['commonName'] == null
          ? null
          : TargetServerSSlInfoCommonName.fromMap(
              (map['commonName'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
      enforce: map['enforce'] == null ? null : map['enforce'] as bool,
      ignoreValidationErrors: map['ignoreValidationErrors'] == null
          ? null
          : map['ignoreValidationErrors'] as bool,
      keyAlias: map['keyAlias'] == null ? null : map['keyAlias'] as String,
      keyStore: map['keyStore'] == null ? null : map['keyStore'] as String,
      protocols: map['protocols'] == null
          ? null
          : (map['protocols'] as List).cast<String>(),
      trustStore:
          map['trustStore'] == null ? null : map['trustStore'] as String,
    );
  }
}
