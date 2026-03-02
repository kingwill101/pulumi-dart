// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_lock_settings.dart';
import 'managed_service_identity.dart';
import 'parameter_value.dart';
import 'resource_group_value.dart';

/// {@template pulumi_blueprint_assignment_args_doc}
/// The set of arguments for Assignment.
/// {@endtemplate}
/// {@macro pulumi_blueprint_assignment_args_doc}
class AssignmentArgs {
  /// Name of the blueprint assignment.
  final pulumi.Input<String>? assignmentName;
  /// ID of the published version of a blueprint definition.
  final pulumi.Input<String>? blueprintId;
  /// Multi-line explain this resource.
  final pulumi.Input<String>? description;
  /// One-liner string explain this resource.
  final pulumi.Input<String>? displayName;
  /// Managed identity for this blueprint assignment.
  final pulumi.Input<ManagedServiceIdentity> identity;
  /// The location of this blueprint assignment.
  final pulumi.Input<String>? location;
  /// Defines how resources deployed by a blueprint assignment are locked.
  final pulumi.Input<AssignmentLockSettings>? locks;
  /// Blueprint assignment parameter values.
  final pulumi.Input<Map<String, ParameterValue>> parameters;
  /// Names and locations of resource group placeholders.
  final pulumi.Input<Map<String, ResourceGroupValue>> resourceGroups;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;
  /// The target subscription scope of the blueprint assignment (format: '/subscriptions/{subscriptionId}'). For management group level assignments, the property is required.
  final pulumi.Input<String>? scope;

  /// Creates a new [AssignmentArgs].
  /// [assignmentName] Name of the blueprint assignment.
  /// [blueprintId] ID of the published version of a blueprint definition.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [identity] Managed identity for this blueprint assignment.
  /// [location] The location of this blueprint assignment.
  /// [locks] Defines how resources deployed by a blueprint assignment are locked.
  /// [parameters] Blueprint assignment parameter values.
  /// [resourceGroups] Names and locations of resource group placeholders.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  /// [scope] The target subscription scope of the blueprint assignment (format: '/subscriptions/{subscriptionId}'). For management group level assignments, the property is required.
  AssignmentArgs({
    this.assignmentName,
    this.blueprintId,
    this.description,
    this.displayName,
    required this.identity,
    this.location,
    this.locks,
    required this.parameters,
    required this.resourceGroups,
    required this.resourceScope,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentName': ?assignmentName,
      'blueprintId': ?blueprintId,
      'description': ?description,
      'displayName': ?displayName,
      'identity': pulumi.Input.mapInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'locks': ?pulumi.Input.mapOptionalInputValue<AssignmentLockSettings, Map<String, dynamic>>(locks, (value) => value.toMap()),
      'parameters': pulumi.Input.mapInputValue<Map<String, ParameterValue>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroups': pulumi.Input.mapInputValue<Map<String, ResourceGroupValue>, Map<String, Map<String, dynamic>>>(resourceGroups, (value) => pulumi.Input.encodeMapValues<ResourceGroupValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceScope': resourceScope,
      'scope': ?scope,
    };
  }

  factory AssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentArgs(
      assignmentName: map['assignmentName'] == null ? null : (map['assignmentName']! as String).input(),
      blueprintId: map['blueprintId'] == null ? null : (map['blueprintId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      identity: (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      locks: map['locks'] == null ? null : (AssignmentLockSettings.fromMap((map['locks']! as Map).cast<String, dynamic>())).input(),
      parameters: (pulumi.Input.decodeMapValues<ParameterValue>(map['parameters'], (value) => ParameterValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroups: (pulumi.Input.decodeMapValues<ResourceGroupValue>(map['resourceGroups'], (value) => ResourceGroupValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceScope: (map['resourceScope'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
    );
  }
}

