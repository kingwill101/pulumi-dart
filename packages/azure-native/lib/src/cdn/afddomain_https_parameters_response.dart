// ignore_for_file: unused_element, unnecessary_cast

import 'afddomain_https_customized_cipher_suite_set_response.dart';
import 'resource_reference_response.dart';

/// The JSON object that contains the properties to secure a domain.
class AFDDomainHttpsParametersResponse {
  /// Defines the source of the SSL certificate.
  final String certificateType;
  /// cipher suite set type that will be used for Https
  final String? cipherSuiteSetType;
  /// Customized cipher suites object that will be used for Https when cipherSuiteSetType is Customized.
  final AFDDomainHttpsCustomizedCipherSuiteSetResponse? customizedCipherSuiteSet;
  /// TLS protocol version that will be used for Https when cipherSuiteSetType is Customized.
  final String? minimumTlsVersion;
  /// Resource reference to the secret. ie. subs/rg/profile/secret
  final ResourceReferenceResponse? secret;

  /// Creates a new [AFDDomainHttpsParametersResponse].
  /// [certificateType] Defines the source of the SSL certificate.
  /// [cipherSuiteSetType] cipher suite set type that will be used for Https
  /// [customizedCipherSuiteSet] Customized cipher suites object that will be used for Https when cipherSuiteSetType is Customized.
  /// [minimumTlsVersion] TLS protocol version that will be used for Https when cipherSuiteSetType is Customized.
  /// [secret] Resource reference to the secret. ie. subs/rg/profile/secret
  AFDDomainHttpsParametersResponse({
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
      'minimumTlsVersion': ?minimumTlsVersion,
      'secret': ?secret == null ? null : secret!.toMap(),
    };
  }

  factory AFDDomainHttpsParametersResponse.fromMap(Map<String, dynamic> map) {
    return AFDDomainHttpsParametersResponse(
      certificateType: map['certificateType'] as String,
      cipherSuiteSetType: map['cipherSuiteSetType'] == null ? null : map['cipherSuiteSetType'] as String,
      customizedCipherSuiteSet: map['customizedCipherSuiteSet'] == null ? null : AFDDomainHttpsCustomizedCipherSuiteSetResponse.fromMap((map['customizedCipherSuiteSet'] as Map).cast<String, dynamic>()),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : map['minimumTlsVersion'] as String,
      secret: map['secret'] == null ? null : ResourceReferenceResponse.fromMap((map['secret'] as Map).cast<String, dynamic>()),
    );
  }
}

