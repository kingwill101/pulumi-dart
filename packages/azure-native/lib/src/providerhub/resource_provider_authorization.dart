// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_provider_authorization_managed_by_authorization.dart';
import 'third_party_extension.dart';

class ResourceProviderAuthorization {
  /// The allowed third party extensions.
  final List<ThirdPartyExtension>? allowedThirdPartyExtensions;
  /// The application id.
  final String? applicationId;
  /// The grouping tag.
  final String? groupingTag;
  /// Managed by authorization.
  final ResourceProviderAuthorizationManagedByAuthorization? managedByAuthorization;
  /// The managed by role definition id.
  final String? managedByRoleDefinitionId;
  /// The role definition id.
  final String? roleDefinitionId;

  /// Creates a new [ResourceProviderAuthorization].
  /// [allowedThirdPartyExtensions] The allowed third party extensions.
  /// [applicationId] The application id.
  /// [groupingTag] The grouping tag.
  /// [managedByAuthorization] Managed by authorization.
  /// [managedByRoleDefinitionId] The managed by role definition id.
  /// [roleDefinitionId] The role definition id.
  ResourceProviderAuthorization({
    this.allowedThirdPartyExtensions,
    this.applicationId,
    this.groupingTag,
    this.managedByAuthorization,
    this.managedByRoleDefinitionId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedThirdPartyExtensions': ?allowedThirdPartyExtensions == null ? null : pulumi.Input.encodeList<ThirdPartyExtension, Map<String, dynamic>>(allowedThirdPartyExtensions!, (value) => value.toMap()),
      'applicationId': ?applicationId,
      'groupingTag': ?groupingTag,
      'managedByAuthorization': ?managedByAuthorization == null ? null : managedByAuthorization!.toMap(),
      'managedByRoleDefinitionId': ?managedByRoleDefinitionId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory ResourceProviderAuthorization.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorization(
      allowedThirdPartyExtensions: map['allowedThirdPartyExtensions'] == null ? null : pulumi.Input.decodeList<ThirdPartyExtension>(map['allowedThirdPartyExtensions'], (value) => ThirdPartyExtension.fromMap((value as Map).cast<String, dynamic>())),
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      groupingTag: map['groupingTag'] == null ? null : map['groupingTag'] as String,
      managedByAuthorization: map['managedByAuthorization'] == null ? null : ResourceProviderAuthorizationManagedByAuthorization.fromMap((map['managedByAuthorization'] as Map).cast<String, dynamic>()),
      managedByRoleDefinitionId: map['managedByRoleDefinitionId'] == null ? null : map['managedByRoleDefinitionId'] as String,
      roleDefinitionId: map['roleDefinitionId'] == null ? null : map['roleDefinitionId'] as String,
    );
  }
}

