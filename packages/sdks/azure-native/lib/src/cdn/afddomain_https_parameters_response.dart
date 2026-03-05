// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'afddomain_https_customized_cipher_suite_set_response.dart';
import 'resource_reference_response.dart';

/// The JSON object that contains the properties to secure a domain.
class AFDDomainHttpsParametersResponse {
  /// Defines the source of the SSL certificate.
  final pulumi.Input<String> certificateType;
  /// cipher suite set type that will be used for Https
  final pulumi.Input<String>? cipherSuiteSetType;
  /// Customized cipher suites object that will be used for Https when cipherSuiteSetType is Customized.
  final pulumi.Input<AFDDomainHttpsCustomizedCipherSuiteSetResponse>? customizedCipherSuiteSet;
  /// TLS protocol version that will be used for Https when cipherSuiteSetType is Customized.
  final pulumi.Input<String>? minimumTlsVersion;
  /// Resource reference to the secret. ie. subs/rg/profile/secret
  final pulumi.Input<ResourceReferenceResponse>? secret;

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
      'customizedCipherSuiteSet': ?pulumi.Input.mapOptionalInputValue<AFDDomainHttpsCustomizedCipherSuiteSetResponse, Map<String, dynamic>>(customizedCipherSuiteSet, (value) => value.toMap()),
      'minimumTlsVersion': ?minimumTlsVersion,
      'secret': ?pulumi.Input.mapOptionalInputValue<ResourceReferenceResponse, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory AFDDomainHttpsParametersResponse.fromMap(Map<String, dynamic> map) {
    return AFDDomainHttpsParametersResponse(
      certificateType: pulumi.Input.fromValue(map['certificateType'] as String),
      cipherSuiteSetType: (() { final guardedValue = map['cipherSuiteSetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customizedCipherSuiteSet: (() { final guardedValue = map['customizedCipherSuiteSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AFDDomainHttpsCustomizedCipherSuiteSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

