// ignore_for_file: unused_element, unnecessary_cast

import 'afd_minimum_tls_version.dart';
import 'afddomain_https_customized_cipher_suite_set.dart';
import 'resource_reference.dart';

/// The JSON object that contains the properties to secure a domain.
class AFDDomainHttpsParameters {
  /// Defines the source of the SSL certificate.
  final String certificateType;
  /// cipher suite set type that will be used for Https
  final String? cipherSuiteSetType;
  /// Customized cipher suites object that will be used for Https when cipherSuiteSetType is Customized.
  final AFDDomainHttpsCustomizedCipherSuiteSet? customizedCipherSuiteSet;
  /// TLS protocol version that will be used for Https when cipherSuiteSetType is Customized.
  final AfdMinimumTlsVersion? minimumTlsVersion;
  /// Resource reference to the secret. ie. subs/rg/profile/secret
  final ResourceReference? secret;

  /// Creates a new [AFDDomainHttpsParameters].
  /// [certificateType] Defines the source of the SSL certificate.
  /// [cipherSuiteSetType] cipher suite set type that will be used for Https
  /// [customizedCipherSuiteSet] Customized cipher suites object that will be used for Https when cipherSuiteSetType is Customized.
  /// [minimumTlsVersion] TLS protocol version that will be used for Https when cipherSuiteSetType is Customized.
  /// [secret] Resource reference to the secret. ie. subs/rg/profile/secret
  AFDDomainHttpsParameters({
    required this.certificateType,
    this.cipherSuiteSetType,
    this.customizedCipherSuiteSet,
    this.minimumTlsVersion,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateType': certificateType,
      'cipherSuiteSetType': ?cipherSuiteSetType,
      'customizedCipherSuiteSet': ?customizedCipherSuiteSet == null ? null : customizedCipherSuiteSet!.toMap(),
      'minimumTlsVersion': ?minimumTlsVersion == null ? null : minimumTlsVersion!.value,
      'secret': ?secret == null ? null : secret!.toMap(),
    };
  }

  factory AFDDomainHttpsParameters.fromMap(Map<String, dynamic> map) {
    return AFDDomainHttpsParameters(
      certificateType: map['certificateType'] as String,
      cipherSuiteSetType: map['cipherSuiteSetType'] == null ? null : map['cipherSuiteSetType'] as String,
      customizedCipherSuiteSet: map['customizedCipherSuiteSet'] == null ? null : AFDDomainHttpsCustomizedCipherSuiteSet.fromMap((map['customizedCipherSuiteSet'] as Map).cast<String, dynamic>()),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : AfdMinimumTlsVersion.fromValue(map['minimumTlsVersion'] as String),
      secret: map['secret'] == null ? null : ResourceReference.fromMap((map['secret'] as Map).cast<String, dynamic>()),
    );
  }
}

