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
    pulumi.Output<String>? assignmentName,
    pulumi.Output<String>? blueprintId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<ManagedServiceIdentity> identity,
    pulumi.Output<String>? location,
    pulumi.Output<AssignmentLockSettings>? locks,
    required pulumi.Output<Map<String, ParameterValue>> parameters,
    required pulumi.Output<Map<String, ResourceGroupValue>> resourceGroups,
    required pulumi.Output<String> resourceScope,
    pulumi.Output<String>? scope,
  }) :
      assignmentName = pulumi.Input.asOptionalInput<String>(assignmentName),
      blueprintId = pulumi.Input.asOptionalInput<String>(blueprintId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      identity = pulumi.Input.asInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      locks = pulumi.Input.asOptionalInput<AssignmentLockSettings>(locks),
      parameters = pulumi.Input.asInput<Map<String, ParameterValue>>(parameters),
      resourceGroups = pulumi.Input.asInput<Map<String, ResourceGroupValue>>(resourceGroups),
      resourceScope = pulumi.Input.asInput<String>(resourceScope),
      scope = pulumi.Input.asOptionalInput<String>(scope);

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
      assignmentName: map['assignmentName'] == null ? null : pulumi.Output.create<String>(map['assignmentName'] as String),
      blueprintId: map['blueprintId'] == null ? null : pulumi.Output.create<String>(map['blueprintId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      identity: pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locks: map['locks'] == null ? null : pulumi.Output.create<AssignmentLockSettings>(AssignmentLockSettings.fromMap((map['locks'] as Map).cast<String, dynamic>())),
      parameters: pulumi.Output.create<Map<String, ParameterValue>>(pulumi.Input.decodeMapValues<ParameterValue>(map['parameters'], (value) => ParameterValue.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroups: pulumi.Output.create<Map<String, ResourceGroupValue>>(pulumi.Input.decodeMapValues<ResourceGroupValue>(map['resourceGroups'], (value) => ResourceGroupValue.fromMap((value as Map).cast<String, dynamic>()))),
      resourceScope: pulumi.Output.create<String>(map['resourceScope'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

