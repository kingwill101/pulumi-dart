// ignore_for_file: unused_element, unnecessary_cast


/// Certificate datastore credentials configuration.
class CertificateDatastoreCredentialsResponse {
  /// Authority URL used for authentication.
  final String? authorityUrl;
  /// [Required] Service principal client ID.
  final String clientId;
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'Certificate'.
  final String credentialsType;
  /// Resource the service principal has access to.
  final String? resourceUrl;
  /// [Required] ID of the tenant to which the service principal belongs.
  final String tenantId;
  /// [Required] Thumbprint of the certificate used for authentication.
  final String thumbprint;

  /// Creates a new [CertificateDatastoreCredentialsResponse].
  /// [authorityUrl] Authority URL used for authentication.
  /// [clientId] [Required] Service principal client ID.
  /// [credentialsType] Enum to determine the datastore credentials type.
  /// [resourceUrl] Resource the service principal has access to.
  /// [tenantId] [Required] ID of the tenant to which the service principal belongs.
  /// [thumbprint] [Required] Thumbprint of the certificate used for authentication.
  CertificateDatastoreCredentialsResponse({
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
      authorityUrl: map['authorityUrl'] == null ? null : map['authorityUrl'] as String,
      clientId: map['clientId'] as String,
      credentialsType: map['credentialsType'] as String,
      resourceUrl: map['resourceUrl'] == null ? null : map['resourceUrl'] as String,
      tenantId: map['tenantId'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

