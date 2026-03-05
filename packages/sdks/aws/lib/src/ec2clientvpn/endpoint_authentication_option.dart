// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointAuthenticationOption {
  /// The ID of the Active Directory to be used for authentication if type is `directory-service-authentication`.
  final pulumi.Input<String>? activeDirectoryId;
  /// The ARN of the client certificate. The certificate must be signed by a certificate authority (CA) and it must be provisioned in AWS Certificate Manager (ACM). Only necessary when type is set to `certificate-authentication`.
  final pulumi.Input<String>? rootCertificateChainArn;
  /// The ARN of the IAM SAML identity provider if type is `federated-authentication`.
  final pulumi.Input<String>? samlProviderArn;
  /// The ARN of the IAM SAML identity provider for the self service portal if type is `federated-authentication`.
  final pulumi.Input<String>? selfServiceSamlProviderArn;
  /// The type of client authentication to be used. Specify `certificate-authentication` to use certificate-based authentication, `directory-service-authentication` to use Active Directory authentication, or `federated-authentication` to use Federated Authentication via SAML 2.0.
  final pulumi.Input<String> type;

  /// Creates a new [EndpointAuthenticationOption].
  /// [activeDirectoryId] The ID of the Active Directory to be used for authentication if type is `directory-service-authentication`.
  /// [rootCertificateChainArn] The ARN of the client certificate. The certificate must be signed by a certificate authority (CA) and it must be provisioned in AWS Certificate Manager (ACM). Only necessary when type is set to `certificate-authentication`.
  /// [samlProviderArn] The ARN of the IAM SAML identity provider if type is `federated-authentication`.
  /// [selfServiceSamlProviderArn] The ARN of the IAM SAML identity provider for the self service portal if type is `federated-authentication`.
  /// [type] The type of client authentication to be used. Specify `certificate-authentication` to use certificate-based authentication, `directory-service-authentication` to use Active Directory authentication, or `federated-authentication` to use Federated Authentication via SAML 2.0.
  EndpointAuthenticationOption({
    this.activeDirectoryId,
    this.rootCertificateChainArn,
    this.samlProviderArn,
    this.selfServiceSamlProviderArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryId': ?activeDirectoryId,
      'rootCertificateChainArn': ?rootCertificateChainArn,
      'samlProviderArn': ?samlProviderArn,
      'selfServiceSamlProviderArn': ?selfServiceSamlProviderArn,
      'type': type,
    };
  }

  factory EndpointAuthenticationOption.fromMap(Map<String, dynamic> map) {
    return EndpointAuthenticationOption(
      activeDirectoryId: (() { final guardedValue = map['activeDirectoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootCertificateChainArn: (() { final guardedValue = map['rootCertificateChainArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samlProviderArn: (() { final guardedValue = map['samlProviderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfServiceSamlProviderArn: (() { final guardedValue = map['selfServiceSamlProviderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

