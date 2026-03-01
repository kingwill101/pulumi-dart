// ignore_for_file: unused_element, unnecessary_cast

import 'service_principal_datastore_secrets.dart';

/// Service Principal datastore credentials configuration.
class ServicePrincipalDatastoreCredentials {
  /// Authority URL used for authentication.
  final String? authorityUrl;
  /// [Required] Service principal client ID.
  final String clientId;
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'ServicePrincipal'.
  final String credentialsType;
  /// Resource the service principal has access to.
  final String? resourceUrl;
  /// [Required] Service principal secrets.
  final ServicePrincipalDatastoreSecrets secrets;
  /// [Required] ID of the tenant to which the service principal belongs.
  final String tenantId;

  /// Creates a new [ServicePrincipalDatastoreCredentials].
  /// [authorityUrl] Authority URL used for authentication.
  /// [clientId] [Required] Service principal client ID.
  /// [credentialsType] Enum to determine the datastore credentials type.
  /// [resourceUrl] Resource the service principal has access to.
  /// [secrets] [Required] Service principal secrets.
  /// [tenantId] [Required] ID of the tenant to which the service principal belongs.
  ServicePrincipalDatastoreCredentials({
    this.authorityUrl,
    required this.clientId,
    required this.credentialsType,
    this.resourceUrl,
    required this.secrets,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityUrl': ?authorityUrl,
      'clientId': clientId,
      'credentialsType': credentialsType,
      'resourceUrl': ?resourceUrl,
      'secrets': secrets.toMap(),
      'tenantId': tenantId,
    };
  }

  factory ServicePrincipalDatastoreCredentials.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalDatastoreCredentials(
      authorityUrl: map['authorityUrl'] == null ? null : map['authorityUrl'] as String,
      clientId: map['clientId'] as String,
      credentialsType: map['credentialsType'] as String,
      resourceUrl: map['resourceUrl'] == null ? null : map['resourceUrl'] as String,
      secrets: ServicePrincipalDatastoreSecrets.fromMap((map['secrets'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] as String,
    );
  }
}

