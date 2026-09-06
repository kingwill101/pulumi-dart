// ignore_for_file: unused_element, unnecessary_cast

import 'expanded_properties_response.dart';
import 'role_eligibility_schedule_request_properties_response_schedule_info.dart';
import 'role_eligibility_schedule_request_properties_response_ticket_info.dart';

/// Result data returned by getPimRoleEligibilitySchedule.
class GetPimRoleEligibilityScheduleResult {
  /// The approvalId of the role eligibility schedule request.
  final String? approvalId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  final String? condition;
  /// Version of the condition. Currently accepted value is '2.0'
  final String? conditionVersion;
  /// DateTime when role eligibility schedule request was created
  final String? createdOn;
  /// Additional properties of principal, scope and role definition
  final ExpandedPropertiesResponse? expandedProperties;
  /// The role eligibility schedule request ID.
  final String? id;
  /// Justification for the role eligibility
  final String? justification;
  /// The role eligibility schedule request name.
  final String? name;
  /// The principal ID.
  final String? principalId;
  /// The principal type of the assigned principal ID.
  final String? principalType;
  /// The type of the role assignment schedule request. Eg: SelfActivate, AdminAssign etc
  final String? requestType;
  /// Id of the user who created this request
  final String? requestorId;
  /// The role definition ID.
  final String? roleDefinitionId;
  /// Schedule info of the role eligibility schedule
  final RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo? scheduleInfo;
  /// The role eligibility schedule request scope.
  final String? scope;
  /// The status of the role eligibility schedule request.
  final String? status;
  /// The resultant role eligibility schedule id or the role eligibility schedule id being updated
  final String? targetRoleEligibilityScheduleId;
  /// The role eligibility schedule instance id being updated
  final String? targetRoleEligibilityScheduleInstanceId;
  /// Ticket Info of the role eligibility
  final RoleEligibilityScheduleRequestPropertiesResponseTicketInfo? ticketInfo;
  /// The role eligibility schedule request type.
  final String? type;

  /// Creates a new [GetPimRoleEligibilityScheduleResult].
  /// [approvalId] The approvalId of the role eligibility schedule request.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [condition] The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  /// [conditionVersion] Version of the condition. Currently accepted value is '2.0'
  /// [createdOn] DateTime when role eligibility schedule request was created
  /// [expandedProperties] Additional properties of principal, scope and role definition
  /// [id] The role eligibility schedule request ID.
  /// [justification] Justification for the role eligibility
  /// [name] The role eligibility schedule request name.
  /// [principalId] The principal ID.
  /// [principalType] The principal type of the assigned principal ID.
  /// [requestType] The type of the role assignment schedule request. Eg: SelfActivate, AdminAssign etc
  /// [requestorId] Id of the user who created this request
  /// [roleDefinitionId] The role definition ID.
  /// [scheduleInfo] Schedule info of the role eligibility schedule
  /// [scope] The role eligibility schedule request scope.
  /// [status] The status of the role eligibility schedule request.
  /// [targetRoleEligibilityScheduleId] The resultant role eligibility schedule id or the role eligibility schedule id being updated
  /// [targetRoleEligibilityScheduleInstanceId] The role eligibility schedule instance id being updated
  /// [ticketInfo] Ticket Info of the role eligibility
  /// [type] The role eligibility schedule request type.
  const GetPimRoleEligibilityScheduleResult({
    this.approvalId,
    this.azureApiVersion,
    this.condition,
    this.conditionVersion,
    this.createdOn,
    this.expandedProperties,
    this.id,
    this.justification,
    this.name,
    this.principalId,
    this.principalType,
    this.requestType,
    this.requestorId,
    this.roleDefinitionId,
    this.scheduleInfo,
    this.scope,
    this.status,
    this.targetRoleEligibilityScheduleId,
    this.targetRoleEligibilityScheduleInstanceId,
    this.ticketInfo,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalId': ?approvalId,
      'azureApiVersion': ?azureApiVersion,
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'createdOn': ?createdOn,
      'expandedProperties': ?expandedProperties?.toMap(),
      'id': ?id,
      'justification': ?justification,
      'name': ?name,
      'principalId': ?principalId,
      'principalType': ?principalType,
      'requestType': ?requestType,
      'requestorId': ?requestorId,
      'roleDefinitionId': ?roleDefinitionId,
      'scheduleInfo': ?scheduleInfo?.toMap(),
      'scope': ?scope,
      'status': ?status,
      'targetRoleEligibilityScheduleId': ?targetRoleEligibilityScheduleId,
      'targetRoleEligibilityScheduleInstanceId': ?targetRoleEligibilityScheduleInstanceId,
      'ticketInfo': ?ticketInfo?.toMap(),
      'type': ?type,
    };
  }

  factory GetPimRoleEligibilityScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetPimRoleEligibilityScheduleResult(
      approvalId: (() { final guardedValue = map['approvalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditionVersion: (() { final guardedValue = map['conditionVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expandedProperties: (() { final guardedValue = map['expandedProperties']; if (guardedValue == null) return null; return ExpandedPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestorId: (() { final guardedValue = map['requestorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scheduleInfo: (() { final guardedValue = map['scheduleInfo']; if (guardedValue == null) return null; return RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetRoleEligibilityScheduleId: (() { final guardedValue = map['targetRoleEligibilityScheduleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetRoleEligibilityScheduleInstanceId: (() { final guardedValue = map['targetRoleEligibilityScheduleInstanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ticketInfo: (() { final guardedValue = map['ticketInfo']; if (guardedValue == null) return null; return RoleEligibilityScheduleRequestPropertiesResponseTicketInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
