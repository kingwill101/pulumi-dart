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
  final String? azureApiVersion;
  /// ID of the published version of a blueprint definition.
  final String? blueprintId;
  /// Multi-line explain this resource.
  final String? description;
  /// One-liner string explain this resource.
  final String? displayName;
  /// String Id used to locate any resource on Azure.
  final String? id;
  /// Managed identity for this blueprint assignment.
  final ManagedServiceIdentityResponse? identity;
  /// The location of this blueprint assignment.
  final String? location;
  /// Defines how resources deployed by a blueprint assignment are locked.
  final AssignmentLockSettingsResponse? locks;
  /// Name of this resource.
  final String? name;
  /// Blueprint assignment parameter values.
  final Map<String, ParameterValueResponse>? parameters;
  /// State of the blueprint assignment.
  final String? provisioningState;
  /// Names and locations of resource group placeholders.
  final Map<String, ResourceGroupValueResponse>? resourceGroups;
  /// The target subscription scope of the blueprint assignment (format: '/subscriptions/{subscriptionId}'). For management group level assignments, the property is required.
  final String? scope;
  /// Status of blueprint assignment. This field is readonly.
  final AssignmentStatusResponse? status;
  /// Type of this resource.
  final String? type;

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
    this.azureApiVersion,
    this.blueprintId,
    this.description,
    this.displayName,
    this.id,
    this.identity,
    this.location,
    this.locks,
    this.name,
    this.parameters,
    this.provisioningState,
    this.resourceGroups,
    this.scope,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'blueprintId': ?blueprintId,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'locks': ?locks?.toMap(),
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ParameterValueResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'resourceGroups': ?(() { final guardedValue = resourceGroups; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ResourceGroupValueResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
      'status': ?status?.toMap(),
      'type': ?type,
    };
  }

  factory GetAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetAssignmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      blueprintId: (() { final guardedValue = map['blueprintId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locks: (() { final guardedValue = map['locks']; if (guardedValue == null) return null; return AssignmentLockSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterValueResponse>(guardedValue, (value) => ParameterValueResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroups: (() { final guardedValue = map['resourceGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ResourceGroupValueResponse>(guardedValue, (value) => ResourceGroupValueResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return AssignmentStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
