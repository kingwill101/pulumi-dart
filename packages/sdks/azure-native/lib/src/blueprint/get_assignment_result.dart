// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_lock_settings_response.dart';
import 'assignment_status_response.dart';
import 'managed_service_identity_response.dart';
import 'parameter_value_response.dart';
import 'resource_group_value_response.dart';

/// Result data returned by getAssignment.
class GetAssignmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ID of the published version of a blueprint definition.
  final String? blueprintId;
  /// Multi-line explain this resource.
  final String? description;
  /// One-liner string explain this resource.
  final String? displayName;
  /// String Id used to locate any resource on Azure.
  final String id;
  /// Managed identity for this blueprint assignment.
  final ManagedServiceIdentityResponse identity;
  /// The location of this blueprint assignment.
  final String location;
  /// Defines how resources deployed by a blueprint assignment are locked.
  final AssignmentLockSettingsResponse? locks;
  /// Name of this resource.
  final String name;
  /// Blueprint assignment parameter values.
  final Map<String, ParameterValueResponse> parameters;
  /// State of the blueprint assignment.
  final String provisioningState;
  /// Names and locations of resource group placeholders.
  final Map<String, ResourceGroupValueResponse> resourceGroups;
  /// The target subscription scope of the blueprint assignment (format: '/subscriptions/{subscriptionId}'). For management group level assignments, the property is required.
  final String? scope;
  /// Status of blueprint assignment. This field is readonly.
  final AssignmentStatusResponse status;
  /// Type of this resource.
  final String type;

  /// Creates a new [GetAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blueprintId] ID of the published version of a blueprint definition.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [id] String Id used to locate any resource on Azure.
  /// [identity] Managed identity for this blueprint assignment.
  /// [location] The location of this blueprint assignment.
  /// [locks] Defines how resources deployed by a blueprint assignment are locked.
  /// [name] Name of this resource.
  /// [parameters] Blueprint assignment parameter values.
  /// [provisioningState] State of the blueprint assignment.
  /// [resourceGroups] Names and locations of resource group placeholders.
  /// [scope] The target subscription scope of the blueprint assignment (format: '/subscriptions/{subscriptionId}'). For management group level assignments, the property is required.
  /// [status] Status of blueprint assignment. This field is readonly.
  /// [type] Type of this resource.
  const GetAssignmentResult({
    required this.azureApiVersion,
    this.blueprintId,
    this.description,
    this.displayName,
    required this.id,
    required this.identity,
    required this.location,
    this.locks,
    required this.name,
    required this.parameters,
    required this.provisioningState,
    required this.resourceGroups,
    this.scope,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'blueprintId': ?blueprintId,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'identity': identity.toMap(),
      'location': location,
      'locks': ?locks?.toMap(),
      'name': name,
      'parameters': pulumi.Input.encodeMapValues<ParameterValueResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceGroups': pulumi.Input.encodeMapValues<ResourceGroupValueResponse, Map<String, dynamic>>(resourceGroups, (value) => value.toMap()),
      'scope': ?scope,
      'status': status.toMap(),
      'type': type,
    };
  }

  factory GetAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetAssignmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      blueprintId: (() { final guardedValue = map['blueprintId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      locks: (() { final guardedValue = map['locks']; if (guardedValue == null) return null; return AssignmentLockSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      parameters: pulumi.Input.decodeMapValues<ParameterValueResponse>(map['parameters']!, (value) => ParameterValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      resourceGroups: pulumi.Input.decodeMapValues<ResourceGroupValueResponse>(map['resourceGroups']!, (value) => ResourceGroupValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: AssignmentStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
