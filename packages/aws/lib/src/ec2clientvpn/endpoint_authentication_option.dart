// ignore_for_file: unused_element, unnecessary_cast

class EndpointAuthenticationOption {
  /// The ID of the Active Directory to be used for authentication if type is `directory-service-authentication`.
  final String? activeDirectoryId;

  /// The ARN of the client certificate. The certificate must be signed by a certificate authority (CA) and it must be provisioned in AWS Certificate Manager (ACM). Only necessary when type is set to `certificate-authentication`.
  final String? rootCertificateChainArn;

  /// The ARN of the IAM SAML identity provider if type is `federated-authentication`.
  final String? samlProviderArn;

  /// The ARN of the IAM SAML identity provider for the self service portal if type is `federated-authentication`.
  final String? selfServiceSamlProviderArn;

  /// The type of client authentication to be used. Specify `certificate-authentication` to use certificate-based authentication, `directory-service-authentication` to use Active Directory authentication, or `federated-authentication` to use Federated Authentication via SAML 2.0.
  final String type;

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
    final map = <String, dynamic>{};
    final activeDirectoryIdValue = activeDirectoryId;
    if (activeDirectoryIdValue != null) {
      map['activeDirectoryId'] = activeDirectoryIdValue;
    }
    final rootCertificateChainArnValue = rootCertificateChainArn;
    if (rootCertificateChainArnValue != null) {
      map['rootCertificateChainArn'] = rootCertificateChainArnValue;
    }
    final samlProviderArnValue = samlProviderArn;
    if (samlProviderArnValue != null) {
      map['samlProviderArn'] = samlProviderArnValue;
    }
    final selfServiceSamlProviderArnValue = selfServiceSamlProviderArn;
    if (selfServiceSamlProviderArnValue != null) {
      map['selfServiceSamlProviderArn'] = selfServiceSamlProviderArnValue;
    }
    map['type'] = type;
    return map;
  }

  factory EndpointAuthenticationOption.fromMap(Map<String, dynamic> map) {
    return EndpointAuthenticationOption(
      activeDirectoryId: map['activeDirectoryId'] == null
          ? null
          : map['activeDirectoryId'] as String,
      rootCertificateChainArn: map['rootCertificateChainArn'] == null
          ? null
          : map['rootCertificateChainArn'] as String,
      samlProviderArn: map['samlProviderArn'] == null
          ? null
          : map['samlProviderArn'] as String,
      selfServiceSamlProviderArn: map['selfServiceSamlProviderArn'] == null
          ? null
          : map['selfServiceSamlProviderArn'] as String,
      type: map['type'] as String,
    );
  }
}
