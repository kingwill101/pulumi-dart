// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expanded_properties_response_principal.dart';
import 'expanded_properties_response_role_definition.dart';
import 'expanded_properties_response_scope.dart';

/// Expanded info of resource, role and principal
class ExpandedPropertiesResponse {
  /// Details of the principal
  final pulumi.Input<ExpandedPropertiesResponsePrincipal>? principal;
  /// Details of role definition
  final pulumi.Input<ExpandedPropertiesResponseRoleDefinition>? roleDefinition;
  /// Details of the resource scope
  final pulumi.Input<ExpandedPropertiesResponseScope>? scope;

  /// Creates a new [ExpandedPropertiesResponse].
  /// [principal] Details of the principal
  /// [roleDefinition] Details of role definition
  /// [scope] Details of the resource scope
  const ExpandedPropertiesResponse({
    this.principal,
    this.roleDefinition,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': ?pulumi.Input.mapOptionalInputValue<ExpandedPropertiesResponsePrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'roleDefinition': ?pulumi.Input.mapOptionalInputValue<ExpandedPropertiesResponseRoleDefinition, Map<String, dynamic>>(roleDefinition, (value) => value.toMap()),
      'scope': ?pulumi.Input.mapOptionalInputValue<ExpandedPropertiesResponseScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory ExpandedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExpandedPropertiesResponse(
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpandedPropertiesResponsePrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleDefinition: (() { final guardedValue = map['roleDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpandedPropertiesResponseRoleDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpandedPropertiesResponseScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
