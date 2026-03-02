// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Principal datastore credentials configuration.
class ServicePrincipalDatastoreCredentialsResponse {
  /// Authority URL used for authentication.
  final pulumi.Input<String>? authorityUrl;
  /// [Required] Service principal client ID.
  final pulumi.Input<String> clientId;
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'ServicePrincipal'.
  final pulumi.Input<String> credentialsType;
  /// Resource the service principal has access to.
  final pulumi.Input<String>? resourceUrl;
  /// [Required] ID of the tenant to which the service principal belongs.
  final pulumi.Input<String> tenantId;

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
      authorityUrl: map['authorityUrl'] == null ? null : (map['authorityUrl'] as String).input(),
      clientId: (map['clientId'] as String).input(),
      credentialsType: (map['credentialsType'] as String).input(),
      resourceUrl: map['resourceUrl'] == null ? null : (map['resourceUrl'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

