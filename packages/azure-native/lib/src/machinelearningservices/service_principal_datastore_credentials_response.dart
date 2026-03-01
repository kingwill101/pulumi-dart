// ignore_for_file: unused_element, unnecessary_cast


/// Service Principal datastore credentials configuration.
class ServicePrincipalDatastoreCredentialsResponse {
  /// Authority URL used for authentication.
  final String? authorityUrl;
  /// [Required] Service principal client ID.
  final String clientId;
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'ServicePrincipal'.
  final String credentialsType;
  /// Resource the service principal has access to.
  final String? resourceUrl;
  /// [Required] ID of the tenant to which the service principal belongs.
  final String tenantId;

  /// Creates a new [ServicePrincipalDatastoreCredentialsResponse].
  /// [authorityUrl] Authority URL used for authentication.
  /// [clientId] [Required] Service principal client ID.
  /// [credentialsType] Enum to determine the datastore credentials type.
  /// [resourceUrl] Resource the service principal has access to.
  /// [tenantId] [Required] ID of the tenant to which the service principal belongs.
  ServicePrincipalDatastoreCredentialsResponse({
    this.authorityUrl,
    required this.clientId,
    required this.credentialsType,
    this.resourceUrl,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityUrl': ?authorityUrl,
      'clientId': clientId,
      'credentialsType': credentialsType,
      'resourceUrl': ?resourceUrl,
      'tenantId': tenantId,
    };
  }

  factory ServicePrincipalDatastoreCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalDatastoreCredentialsResponse(
      authorityUrl: map['authorityUrl'] == null ? null : map['authorityUrl'] as String,
      clientId: map['clientId'] as String,
      credentialsType: map['credentialsType'] as String,
      resourceUrl: map['resourceUrl'] == null ? null : map['resourceUrl'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

