// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Certificate datastore credentials configuration.
class CertificateDatastoreCredentialsResponse {
  /// Authority URL used for authentication.
  final pulumi.Input<String>? authorityUrl;
  /// [Required] Service principal client ID.
  final pulumi.Input<String> clientId;
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'Certificate'.
  final pulumi.Input<String> credentialsType;
  /// Resource the service principal has access to.
  final pulumi.Input<String>? resourceUrl;
  /// [Required] ID of the tenant to which the service principal belongs.
  final pulumi.Input<String> tenantId;
  /// [Required] Thumbprint of the certificate used for authentication.
  final pulumi.Input<String> thumbprint;

  /// Creates a new [CertificateDatastoreCredentialsResponse].
  /// [authorityUrl] Authority URL used for authentication.
  /// [clientId] [Required] Service principal client ID.
  /// [credentialsType] Enum to determine the datastore credentials type.
  /// [resourceUrl] Resource the service principal has access to.
  /// [tenantId] [Required] ID of the tenant to which the service principal belongs.
  /// [thumbprint] [Required] Thumbprint of the certificate used for authentication.
  const CertificateDatastoreCredentialsResponse({
    this.authorityUrl,
    required this.clientId,
    required this.credentialsType,
    this.resourceUrl,
    required this.tenantId,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityUrl': ?authorityUrl,
      'clientId': clientId,
      'credentialsType': credentialsType,
      'resourceUrl': ?resourceUrl,
      'tenantId': tenantId,
      'thumbprint': thumbprint,
    };
  }

  factory CertificateDatastoreCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return CertificateDatastoreCredentialsResponse(
      authorityUrl: (() { final guardedValue = map['authorityUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      credentialsType: pulumi.Input.fromValue(map['credentialsType'] as String),
      resourceUrl: (() { final guardedValue = map['resourceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}
