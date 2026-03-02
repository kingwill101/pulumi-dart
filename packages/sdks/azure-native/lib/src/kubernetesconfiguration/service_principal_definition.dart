// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters to authenticate using Service Principal.
class ServicePrincipalDefinition {
  /// Base64-encoded certificate used to authenticate a Service Principal
  final pulumi.Input<String>? clientCertificate;
  /// The password for the certificate used to authenticate a Service Principal
  final pulumi.Input<String>? clientCertificatePassword;
  /// Specifies whether to include x5c header in client claims when acquiring a token to enable subject name / issuer based authentication for the Client Certificate
  final pulumi.Input<bool>? clientCertificateSendChain;
  /// The client Id for authenticating a Service Principal.
  final pulumi.Input<String>? clientId;
  /// The client secret for authenticating a Service Principal
  final pulumi.Input<String>? clientSecret;
  /// The tenant Id for authenticating a Service Principal
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ServicePrincipalDefinition].
  /// [clientCertificate] Base64-encoded certificate used to authenticate a Service Principal
  /// [clientCertificatePassword] The password for the certificate used to authenticate a Service Principal
  /// [clientCertificateSendChain] Specifies whether to include x5c header in client claims when acquiring a token to enable subject name / issuer based authentication for the Client Certificate
  /// [clientId] The client Id for authenticating a Service Principal.
  /// [clientSecret] The client secret for authenticating a Service Principal
  /// [tenantId] The tenant Id for authenticating a Service Principal
  ServicePrincipalDefinition({
    this.clientCertificate,
    this.clientCertificatePassword,
    this.clientCertificateSendChain,
    this.clientId,
    this.clientSecret,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?clientCertificate,
      'clientCertificatePassword': ?clientCertificatePassword,
      'clientCertificateSendChain': ?clientCertificateSendChain,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'tenantId': ?tenantId,
    };
  }

  factory ServicePrincipalDefinition.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalDefinition(
      clientCertificate: map['clientCertificate'] == null ? null : (map['clientCertificate']! as String).input(),
      clientCertificatePassword: map['clientCertificatePassword'] == null ? null : (map['clientCertificatePassword']! as String).input(),
      clientCertificateSendChain: map['clientCertificateSendChain'] == null ? null : (map['clientCertificateSendChain']! as bool).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

