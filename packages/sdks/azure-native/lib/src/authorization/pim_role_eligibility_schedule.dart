import 'package:pulumi/pulumi.dart' as pulumi;
import 'expanded_properties_response.dart';
import 'pim_role_eligibility_schedule_args.dart';
import 'role_eligibility_schedule_request_properties_response_schedule_info.dart';
import 'role_eligibility_schedule_request_properties_response_ticket_info.dart';

/// A PIM (Privileged Identity Management) Role Eligibility Schedule.
///
/// Role Eligibility Schedules are used to limit standing administrator access to privileged roles in Azure PIM. See
/// [here](https://learn.microsoft.com/en-us/rest/api/authorization/privileged-role-eligibility-rest-sample) for details.
///
/// A Role Eligibility Schedule is uniquely defined by scope, principal, and role. At present, only one instance of this
/// resource can exist for a given scope|principal|role tuple.
///
/// Note that this resource cannot be updated. Each change leads to a recreation.
///
/// Internally, this resource uses the
/// [Role Eligibility Schedule Requests](https://learn.microsoft.com/en-us/rest/api/authorization/role-eligibility-schedule-requests?view=rest-authorization-2020-10-01)
/// API to create and delete the schedules.
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:authorization:PimRoleEligibilitySchedule 64caffb6-55c0-4deb-a585-68e948ea1ad6 /{scope}/providers/Microsoft.Authorization/roleEligibilityScheduleRequests/{roleEligibilityScheduleRequestName}
/// ```
class PimRoleEligibilitySchedule extends pulumi.CustomResource {
  /// The approvalId of the role eligibility schedule request.
  late final pulumi.Output<String> approvalId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  late final pulumi.Output<String?> condition;
  /// Version of the condition. Currently accepted value is '2.0'
  late final pulumi.Output<String?> conditionVersion;
  /// DateTime when role eligibility schedule request was created
  late final pulumi.Output<String> createdOn;
  /// Additional properties of principal, scope and role definition
  late final pulumi.Output<ExpandedPropertiesResponse> expandedProperties;
  /// Justification for the role eligibility
  late final pulumi.Output<String?> justification;
  /// The role eligibility schedule request name.
  late final pulumi.Output<String> name;
  /// The principal ID.
  late final pulumi.Output<String> principalId;
  /// The principal type of the assigned principal ID.
  late final pulumi.Output<String> principalType;
  /// The type of the role assignment schedule request. Eg: SelfActivate, AdminAssign etc
  late final pulumi.Output<String?> requestType;
  /// Id of the user who created this request
  late final pulumi.Output<String> requestorId;
  /// The role definition ID.
  late final pulumi.Output<String> roleDefinitionId;
  /// Schedule info of the role eligibility schedule
  late final pulumi.Output<RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo?> scheduleInfo;
  /// The role eligibility schedule request scope.
  late final pulumi.Output<String> scope;
  /// The status of the role eligibility schedule request.
  late final pulumi.Output<String> status;
  /// The resultant role eligibility schedule id or the role eligibility schedule id being updated
  late final pulumi.Output<String?> targetRoleEligibilityScheduleId;
  /// The role eligibility schedule instance id being updated
  late final pulumi.Output<String?> targetRoleEligibilityScheduleInstanceId;
  /// Ticket Info of the role eligibility
  late final pulumi.Output<RoleEligibilityScheduleRequestPropertiesResponseTicketInfo?> ticketInfo;
  /// The role eligibility schedule request type.
  late final pulumi.Output<String> type;

  /// Creates a new [PimRoleEligibilitySchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PimRoleEligibilitySchedule]. {@macro pulumi_authorization_pim_role_eligibility_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PimRoleEligibilitySchedule(
    String name, {
    PimRoleEligibilityScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:PimRoleEligibilitySchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalId = registerOutput<String>('approvalId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    condition = registerOutput<String?>('condition');
    conditionVersion = registerOutput<String?>('conditionVersion');
    createdOn = registerOutput<String>('createdOn');
    expandedProperties = registerOutput<ExpandedPropertiesResponse>('expandedProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpandedPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    justification = registerOutput<String?>('justification');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String>('principalType');
    requestType = registerOutput<String?>('requestType');
    requestorId = registerOutput<String>('requestorId');
    roleDefinitionId = registerOutput<String>('roleDefinitionId');
    scheduleInfo = registerOutput<RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo?>('scheduleInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scope = registerOutput<String>('scope');
    status = registerOutput<String>('status');
    targetRoleEligibilityScheduleId = registerOutput<String?>('targetRoleEligibilityScheduleId');
    targetRoleEligibilityScheduleInstanceId = registerOutput<String?>('targetRoleEligibilityScheduleInstanceId');
    ticketInfo = registerOutput<RoleEligibilityScheduleRequestPropertiesResponseTicketInfo?>('ticketInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoleEligibilityScheduleRequestPropertiesResponseTicketInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PimRoleEligibilitySchedule] resource.
  PimRoleEligibilitySchedule.reference(String urn)
    : super(
        'azure-native:authorization:PimRoleEligibilitySchedule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    approvalId = registerOutput<String>('approvalId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    condition = registerOutput<String?>('condition');
    conditionVersion = registerOutput<String?>('conditionVersion');
    createdOn = registerOutput<String>('createdOn');
    expandedProperties = registerOutput<ExpandedPropertiesResponse>('expandedProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpandedPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    justification = registerOutput<String?>('justification');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String>('principalType');
    requestType = registerOutput<String?>('requestType');
    requestorId = registerOutput<String>('requestorId');
    roleDefinitionId = registerOutput<String>('roleDefinitionId');
    scheduleInfo = registerOutput<RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo?>('scheduleInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scope = registerOutput<String>('scope');
    status = registerOutput<String>('status');
    targetRoleEligibilityScheduleId = registerOutput<String?>('targetRoleEligibilityScheduleId');
    targetRoleEligibilityScheduleInstanceId = registerOutput<String?>('targetRoleEligibilityScheduleInstanceId');
    ticketInfo = registerOutput<RoleEligibilityScheduleRequestPropertiesResponseTicketInfo?>('ticketInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoleEligibilityScheduleRequestPropertiesResponseTicketInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
