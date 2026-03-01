// ignore_for_file: unused_element, unnecessary_cast

import 'expanded_properties_response_principal.dart';
import 'expanded_properties_response_role_definition.dart';
import 'expanded_properties_response_scope.dart';

/// Expanded info of resource, role and principal
class ExpandedPropertiesResponse {
  /// Details of the principal
  final ExpandedPropertiesResponsePrincipal? principal;
  /// Details of role definition
  final ExpandedPropertiesResponseRoleDefinition? roleDefinition;
  /// Details of the resource scope
  final ExpandedPropertiesResponseScope? scope;

  /// Creates a new [ExpandedPropertiesResponse].
  /// [principal] Details of the principal
  /// [roleDefinition] Details of role definition
  /// [scope] Details of the resource scope
  ExpandedPropertiesResponse({
    this.principal,
    this.roleDefinition,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': ?principal == null ? null : principal!.toMap(),
      'roleDefinition': ?roleDefinition == null ? null : roleDefinition!.toMap(),
      'scope': ?scope == null ? null : scope!.toMap(),
    };
  }

  factory ExpandedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExpandedPropertiesResponse(
      principal: map['principal'] == null ? null : ExpandedPropertiesResponsePrincipal.fromMap((map['principal'] as Map).cast<String, dynamic>()),
      roleDefinition: map['roleDefinition'] == null ? null : ExpandedPropertiesResponseRoleDefinition.fromMap((map['roleDefinition'] as Map).cast<String, dynamic>()),
      scope: map['scope'] == null ? null : ExpandedPropertiesResponseScope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
    );
  }
}

