// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_authorization_response.dart';

/// Managed by authorization.
class ResourceProviderAuthorizationManagedByAuthorizationResponse {
  final List<AdditionalAuthorizationResponse>? additionalAuthorizations;
  /// Indicates whether the managed by resource role definition ID should be inherited.
  final bool? allowManagedByInheritance;
  /// The managed by resource role definition ID for the application.
  final String? managedByResourceRoleDefinitionId;

  /// Creates a new [ResourceProviderAuthorizationManagedByAuthorizationResponse].
  /// [additionalAuthorizations] Optional.
  /// [allowManagedByInheritance] Indicates whether the managed by resource role definition ID should be inherited.
  /// [managedByResourceRoleDefinitionId] The managed by resource role definition ID for the application.
  ResourceProviderAuthorizationManagedByAuthorizationResponse({
    this.additionalAuthorizations,
    this.allowManagedByInheritance,
    this.managedByResourceRoleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthorizations': ?additionalAuthorizations == null ? null : pulumi.Input.encodeList<AdditionalAuthorizationResponse, Map<String, dynamic>>(additionalAuthorizations!, (value) => value.toMap()),
      'allowManagedByInheritance': ?allowManagedByInheritance,
      'managedByResourceRoleDefinitionId': ?managedByResourceRoleDefinitionId,
    };
  }

  factory ResourceProviderAuthorizationManagedByAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorizationManagedByAuthorizationResponse(
      additionalAuthorizations: map['additionalAuthorizations'] == null ? null : pulumi.Input.decodeList<AdditionalAuthorizationResponse>(map['additionalAuthorizations'], (value) => AdditionalAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())),
      allowManagedByInheritance: map['allowManagedByInheritance'] == null ? null : map['allowManagedByInheritance'] as bool,
      managedByResourceRoleDefinitionId: map['managedByResourceRoleDefinitionId'] == null ? null : map['managedByResourceRoleDefinitionId'] as String,
    );
  }
}

