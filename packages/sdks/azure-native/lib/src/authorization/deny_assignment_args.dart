// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_assignment_permission.dart';
import 'deny_assignment_principal.dart';

/// {@template pulumi_authorization_deny_assignment_args_doc}
/// The set of arguments for DenyAssignment.
/// {@endtemplate}
/// {@macro pulumi_authorization_deny_assignment_args_doc}
class DenyAssignmentArgs {
  /// The conditions on the deny assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  final pulumi.Input<String>? condition;
  /// Version of the condition.
  final pulumi.Input<String>? conditionVersion;
  /// The effect of the deny assignment. 'enforced' blocks access, 'audit' logs without blocking.
  final pulumi.Input<String>? denyAssignmentEffect;
  /// The ID of the deny assignment to get.
  final pulumi.Input<String>? denyAssignmentId;
  /// The display name of the deny assignment.
  final pulumi.Input<String>? denyAssignmentName;
  /// The description of the deny assignment.
  final pulumi.Input<String>? description;
  /// Determines if the deny assignment applies to child scopes. Default value is false.
  final pulumi.Input<bool>? doNotApplyToChildScopes;
  /// Array of principals to which the deny assignment does not apply.
  final pulumi.Input<List<DenyAssignmentPrincipal>>? excludePrincipals;
  /// Specifies whether this deny assignment was created by Azure and cannot be edited or deleted.
  final pulumi.Input<bool>? isSystemProtected;
  /// An array of permissions that are denied by the deny assignment.
  final pulumi.Input<List<DenyAssignmentPermission>>? permissions;
  /// Array of principals to which the deny assignment applies.
  final pulumi.Input<List<DenyAssignmentPrincipal>>? principals;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [DenyAssignmentArgs].
  /// [condition] The conditions on the deny assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  /// [conditionVersion] Version of the condition.
  /// [denyAssignmentEffect] The effect of the deny assignment. 'enforced' blocks access, 'audit' logs without blocking.
  /// [denyAssignmentId] The ID of the deny assignment to get.
  /// [denyAssignmentName] The display name of the deny assignment.
  /// [description] The description of the deny assignment.
  /// [doNotApplyToChildScopes] Determines if the deny assignment applies to child scopes. Default value is false.
  /// [excludePrincipals] Array of principals to which the deny assignment does not apply.
  /// [isSystemProtected] Specifies whether this deny assignment was created by Azure and cannot be edited or deleted.
  /// [permissions] An array of permissions that are denied by the deny assignment.
  /// [principals] Array of principals to which the deny assignment applies.
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  const DenyAssignmentArgs({
    this.condition,
    this.conditionVersion,
    this.denyAssignmentEffect,
    this.denyAssignmentId,
    this.denyAssignmentName,
    this.description,
    this.doNotApplyToChildScopes,
    this.excludePrincipals,
    this.isSystemProtected,
    this.permissions,
    this.principals,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'denyAssignmentEffect': ?denyAssignmentEffect,
      'denyAssignmentId': ?denyAssignmentId,
      'denyAssignmentName': ?denyAssignmentName,
      'description': ?description,
      'doNotApplyToChildScopes': ?doNotApplyToChildScopes,
      'excludePrincipals': ?pulumi.Input.mapOptionalInputValue<List<DenyAssignmentPrincipal>, List<Map<String, dynamic>>>(excludePrincipals, (value) => pulumi.Input.encodeList<DenyAssignmentPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isSystemProtected': ?isSystemProtected,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<DenyAssignmentPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<DenyAssignmentPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principals': ?pulumi.Input.mapOptionalInputValue<List<DenyAssignmentPrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<DenyAssignmentPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
    };
  }

  factory DenyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return DenyAssignmentArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditionVersion: (() { final guardedValue = map['conditionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      denyAssignmentEffect: (() { final guardedValue = map['denyAssignmentEffect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      denyAssignmentId: (() { final guardedValue = map['denyAssignmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      denyAssignmentName: (() { final guardedValue = map['denyAssignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      doNotApplyToChildScopes: (() { final guardedValue = map['doNotApplyToChildScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludePrincipals: (() { final guardedValue = map['excludePrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DenyAssignmentPrincipal>(guardedValue, (value) => DenyAssignmentPrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isSystemProtected: (() { final guardedValue = map['isSystemProtected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DenyAssignmentPermission>(guardedValue, (value) => DenyAssignmentPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DenyAssignmentPrincipal>(guardedValue, (value) => DenyAssignmentPrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
