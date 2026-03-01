// ignore_for_file: unused_element, unnecessary_cast

import 'expanded_properties_response.dart';
import 'role_eligibility_schedule_request_properties_response_schedule_info.dart';
import 'role_eligibility_schedule_request_properties_response_ticket_info.dart';

/// Result data returned by getPimRoleEligibilitySchedule.
class GetPimRoleEligibilityScheduleResult {
  /// The approvalId of the role eligibility schedule request.
  final String approvalId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  final String? condition;
  /// Version of the condition. Currently accepted value is '2.0'
  final String? conditionVersion;
  /// DateTime when role eligibility schedule request was created
  final String createdOn;
  /// Additional properties of principal, scope and role definition
  final ExpandedPropertiesResponse expandedProperties;
  /// The role eligibility schedule request ID.
  final String id;
  /// Justification for the role eligibility
  final String? justification;
  /// The role eligibility schedule request name.
  final String name;
  /// The principal ID.
  final String principalId;
  /// The principal type of the assigned principal ID.
  final String principalType;
  /// The type of the role assignment schedule request. Eg: SelfActivate, AdminAssign etc
  final String requestType;
  /// Id of the user who created this request
  final String requestorId;
  /// The role definition ID.
  final String roleDefinitionId;
  /// Schedule info of the role eligibility schedule
  final RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo? scheduleInfo;
  /// The role eligibility schedule request scope.
  final String scope;
  /// The status of the role eligibility schedule request.
  final String status;
  /// The resultant role eligibility schedule id or the role eligibility schedule id being updated
  final String? targetRoleEligibilityScheduleId;
  /// The role eligibility schedule instance id being updated
  final String? targetRoleEligibilityScheduleInstanceId;
  /// Ticket Info of the role eligibility
  final RoleEligibilityScheduleRequestPropertiesResponseTicketInfo? ticketInfo;
  /// The role eligibility schedule request type.
  final String type;

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
  GetPimRoleEligibilityScheduleResult({
    required this.approvalId,
    required this.azureApiVersion,
    this.condition,
    this.conditionVersion,
    required this.createdOn,
    required this.expandedProperties,
    required this.id,
    this.justification,
    required this.name,
    required this.principalId,
    required this.principalType,
    required this.requestType,
    required this.requestorId,
    required this.roleDefinitionId,
    this.scheduleInfo,
    required this.scope,
    required this.status,
    this.targetRoleEligibilityScheduleId,
    this.targetRoleEligibilityScheduleInstanceId,
    this.ticketInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalId': approvalId,
      'azureApiVersion': azureApiVersion,
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'createdOn': createdOn,
      'expandedProperties': expandedProperties.toMap(),
      'id': id,
      'justification': ?justification,
      'name': name,
      'principalId': principalId,
      'principalType': principalType,
      'requestType': requestType,
      'requestorId': requestorId,
      'roleDefinitionId': roleDefinitionId,
      'scheduleInfo': ?scheduleInfo == null ? null : scheduleInfo!.toMap(),
      'scope': scope,
      'status': status,
      'targetRoleEligibilityScheduleId': ?targetRoleEligibilityScheduleId,
      'targetRoleEligibilityScheduleInstanceId': ?targetRoleEligibilityScheduleInstanceId,
      'ticketInfo': ?ticketInfo == null ? null : ticketInfo!.toMap(),
      'type': type,
    };
  }

  factory GetPimRoleEligibilityScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetPimRoleEligibilityScheduleResult(
      approvalId: map['approvalId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      condition: map['condition'] == null ? null : map['condition'] as String,
      conditionVersion: map['conditionVersion'] == null ? null : map['conditionVersion'] as String,
      createdOn: map['createdOn'] as String,
      expandedProperties: ExpandedPropertiesResponse.fromMap((map['expandedProperties'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      justification: map['justification'] == null ? null : map['justification'] as String,
      name: map['name'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
      requestType: map['requestType'] as String,
      requestorId: map['requestorId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
      scheduleInfo: map['scheduleInfo'] == null ? null : RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo.fromMap((map['scheduleInfo'] as Map).cast<String, dynamic>()),
      scope: map['scope'] as String,
      status: map['status'] as String,
      targetRoleEligibilityScheduleId: map['targetRoleEligibilityScheduleId'] == null ? null : map['targetRoleEligibilityScheduleId'] as String,
      targetRoleEligibilityScheduleInstanceId: map['targetRoleEligibilityScheduleInstanceId'] == null ? null : map['targetRoleEligibilityScheduleInstanceId'] as String,
      ticketInfo: map['ticketInfo'] == null ? null : RoleEligibilityScheduleRequestPropertiesResponseTicketInfo.fromMap((map['ticketInfo'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

