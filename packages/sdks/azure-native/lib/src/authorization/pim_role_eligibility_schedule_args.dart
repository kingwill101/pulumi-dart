// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_eligibility_schedule_request_properties_schedule_info.dart';
import 'role_eligibility_schedule_request_properties_ticket_info.dart';

/// {@template pulumi_authorization_pim_role_eligibility_schedule_args_doc}
/// The set of arguments for PimRoleEligibilitySchedule.
/// {@endtemplate}
/// {@macro pulumi_authorization_pim_role_eligibility_schedule_args_doc}
class PimRoleEligibilityScheduleArgs {
  /// The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  final pulumi.Input<String>? condition;
  /// Version of the condition. Currently accepted value is '2.0'
  final pulumi.Input<String>? conditionVersion;
  /// Justification for the role eligibility
  final pulumi.Input<String>? justification;
  /// The principal ID.
  final pulumi.Input<String> principalId;
  /// The role definition ID.
  final pulumi.Input<String> roleDefinitionId;
  /// Schedule info of the role eligibility schedule
  final pulumi.Input<RoleEligibilityScheduleRequestPropertiesScheduleInfo>? scheduleInfo;
  /// The scope of the role eligibility schedule request to create. The scope can be any REST resource instance. For example, use '/subscriptions/{subscription-id}/' for a subscription, '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for a resource group, and '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider}/{resource-type}/{resource-name}' for a resource.
  final pulumi.Input<String> scope;
  /// The resultant role eligibility schedule id or the role eligibility schedule id being updated
  final pulumi.Input<String>? targetRoleEligibilityScheduleId;
  /// The role eligibility schedule instance id being updated
  final pulumi.Input<String>? targetRoleEligibilityScheduleInstanceId;
  /// Ticket Info of the role eligibility
  final pulumi.Input<RoleEligibilityScheduleRequestPropertiesTicketInfo>? ticketInfo;

  /// Creates a new [PimRoleEligibilityScheduleArgs].
  /// [condition] The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  /// [conditionVersion] Version of the condition. Currently accepted value is '2.0'
  /// [justification] Justification for the role eligibility
  /// [principalId] The principal ID.
  /// [roleDefinitionId] The role definition ID.
  /// [scheduleInfo] Schedule info of the role eligibility schedule
  /// [scope] The scope of the role eligibility schedule request to create. The scope can be any REST resource instance. For example, use '/subscriptions/{subscription-id}/' for a subscription, '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for a resource group, and '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider}/{resource-type}/{resource-name}' for a resource.
  /// [targetRoleEligibilityScheduleId] The resultant role eligibility schedule id or the role eligibility schedule id being updated
  /// [targetRoleEligibilityScheduleInstanceId] The role eligibility schedule instance id being updated
  /// [ticketInfo] Ticket Info of the role eligibility
  PimRoleEligibilityScheduleArgs({
    this.condition,
    this.conditionVersion,
    this.justification,
    required this.principalId,
    required this.roleDefinitionId,
    this.scheduleInfo,
    required this.scope,
    this.targetRoleEligibilityScheduleId,
    this.targetRoleEligibilityScheduleInstanceId,
    this.ticketInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'justification': ?justification,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
      'scheduleInfo': ?pulumi.Input.mapOptionalInputValue<RoleEligibilityScheduleRequestPropertiesScheduleInfo, Map<String, dynamic>>(scheduleInfo, (value) => value.toMap()),
      'scope': scope,
      'targetRoleEligibilityScheduleId': ?targetRoleEligibilityScheduleId,
      'targetRoleEligibilityScheduleInstanceId': ?targetRoleEligibilityScheduleInstanceId,
      'ticketInfo': ?pulumi.Input.mapOptionalInputValue<RoleEligibilityScheduleRequestPropertiesTicketInfo, Map<String, dynamic>>(ticketInfo, (value) => value.toMap()),
    };
  }

  factory PimRoleEligibilityScheduleArgs.fromMap(Map<String, dynamic> map) {
    return PimRoleEligibilityScheduleArgs(
      condition: map['condition'] == null ? null : (map['condition'] as String).input(),
      conditionVersion: map['conditionVersion'] == null ? null : (map['conditionVersion'] as String).input(),
      justification: map['justification'] == null ? null : (map['justification'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
      scheduleInfo: map['scheduleInfo'] == null ? null : (RoleEligibilityScheduleRequestPropertiesScheduleInfo.fromMap((map['scheduleInfo'] as Map).cast<String, dynamic>())).input(),
      scope: (map['scope'] as String).input(),
      targetRoleEligibilityScheduleId: map['targetRoleEligibilityScheduleId'] == null ? null : (map['targetRoleEligibilityScheduleId'] as String).input(),
      targetRoleEligibilityScheduleInstanceId: map['targetRoleEligibilityScheduleInstanceId'] == null ? null : (map['targetRoleEligibilityScheduleInstanceId'] as String).input(),
      ticketInfo: map['ticketInfo'] == null ? null : (RoleEligibilityScheduleRequestPropertiesTicketInfo.fromMap((map['ticketInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

