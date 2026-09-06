import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_review_history_definition_by_id_args.dart';
import 'get_access_review_history_definition_by_id_result.dart';
import 'get_access_review_schedule_definition_by_id_args.dart';
import 'get_access_review_schedule_definition_by_id_result.dart';
import 'get_client_config_result.dart';
import 'get_client_token_args.dart';
import 'get_client_token_result.dart';
import 'get_deny_assignment_args.dart';
import 'get_deny_assignment_result.dart';
import 'get_management_lock_at_resource_group_level_args.dart';
import 'get_management_lock_at_resource_group_level_result.dart';
import 'get_management_lock_at_resource_level_args.dart';
import 'get_management_lock_at_resource_level_result.dart';
import 'get_management_lock_at_subscription_level_args.dart';
import 'get_management_lock_at_subscription_level_result.dart';
import 'get_management_lock_by_scope_args.dart';
import 'get_management_lock_by_scope_result.dart';
import 'get_pim_role_eligibility_schedule_args.dart';
import 'get_pim_role_eligibility_schedule_result.dart';
import 'get_policy_assignment_args.dart';
import 'get_policy_assignment_result.dart';
import 'get_policy_definition_args.dart';
import 'get_policy_definition_at_management_group_args.dart';
import 'get_policy_definition_at_management_group_result.dart';
import 'get_policy_definition_result.dart';
import 'get_policy_definition_version_args.dart';
import 'get_policy_definition_version_at_management_group_args.dart';
import 'get_policy_definition_version_at_management_group_result.dart';
import 'get_policy_definition_version_result.dart';
import 'get_policy_exemption_args.dart';
import 'get_policy_exemption_result.dart';
import 'get_policy_set_definition_args.dart';
import 'get_policy_set_definition_at_management_group_args.dart';
import 'get_policy_set_definition_at_management_group_result.dart';
import 'get_policy_set_definition_result.dart';
import 'get_policy_set_definition_version_args.dart';
import 'get_policy_set_definition_version_at_management_group_args.dart';
import 'get_policy_set_definition_version_at_management_group_result.dart';
import 'get_policy_set_definition_version_result.dart';
import 'get_private_link_association_args.dart';
import 'get_private_link_association_result.dart';
import 'get_resource_management_private_link_args.dart';
import 'get_resource_management_private_link_result.dart';
import 'get_role_assignment_args.dart';
import 'get_role_assignment_result.dart';
import 'get_role_definition_args.dart';
import 'get_role_definition_result.dart';
import 'get_role_management_policy_args.dart';
import 'get_role_management_policy_assignment_args.dart';
import 'get_role_management_policy_assignment_result.dart';
import 'get_role_management_policy_result.dart';
import 'get_scope_access_review_history_definition_by_id_args.dart';
import 'get_scope_access_review_history_definition_by_id_result.dart';
import 'get_scope_access_review_schedule_definition_by_id_args.dart';
import 'get_scope_access_review_schedule_definition_by_id_result.dart';
import 'get_variable_args.dart';
import 'get_variable_at_management_group_args.dart';
import 'get_variable_at_management_group_result.dart';
import 'get_variable_result.dart';
import 'get_variable_value_args.dart';
import 'get_variable_value_at_management_group_args.dart';
import 'get_variable_value_at_management_group_result.dart';
import 'get_variable_value_result.dart';
import 'list_policy_definition_version_all_at_management_group_args.dart';
import 'list_policy_definition_version_all_at_management_group_result.dart';
import 'list_policy_definition_version_all_builtins_result.dart';
import 'list_policy_definition_version_all_result.dart';
import 'list_policy_set_definition_version_all_at_management_group_args.dart';
import 'list_policy_set_definition_version_all_at_management_group_result.dart';
import 'list_policy_set_definition_version_all_builtins_result.dart';
import 'list_policy_set_definition_version_all_result.dart';
import 'list_subscriptions_args.dart';
import 'list_subscriptions_result.dart';

/// Get access review history definition by definition Id
///
/// Uses Azure REST API version 2021-12-01-preview.
///
/// Other available API versions: 2021-11-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_access_review_history_definition_by_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessReviewHistoryDefinitionByIdResult> getAccessReviewHistoryDefinitionById(
  GetAccessReviewHistoryDefinitionByIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getAccessReviewHistoryDefinitionById',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessReviewHistoryDefinitionByIdResult.fromMap(result);
}

pulumi.Output<GetAccessReviewHistoryDefinitionByIdResult> getAccessReviewHistoryDefinitionByIdOutput(
  GetAccessReviewHistoryDefinitionByIdArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getAccessReviewHistoryDefinitionById',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessReviewHistoryDefinitionByIdResult.fromMap);
}

/// Get single access review definition
///
/// Uses Azure REST API version 2021-12-01-preview.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01-preview, 2021-11-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_access_review_schedule_definition_by_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessReviewScheduleDefinitionByIdResult> getAccessReviewScheduleDefinitionById(
  GetAccessReviewScheduleDefinitionByIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getAccessReviewScheduleDefinitionById',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessReviewScheduleDefinitionByIdResult.fromMap(result);
}

pulumi.Output<GetAccessReviewScheduleDefinitionByIdResult> getAccessReviewScheduleDefinitionByIdOutput(
  GetAccessReviewScheduleDefinitionByIdArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getAccessReviewScheduleDefinitionById',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessReviewScheduleDefinitionByIdResult.fromMap);
}

/// Use this function to access the current configuration of the native Azure provider.
/// [options] Invoke options controlling this call.
Future<GetClientConfigResult> getClientConfig(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getClientConfig',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientConfigResult.fromMap(result);
}

pulumi.Output<GetClientConfigResult> getClientConfigOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getClientConfig',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(GetClientConfigResult.fromMap);
}

/// Use this function to get an Azure authentication token for the current login context.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_client_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientTokenResult> getClientToken(
  GetClientTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getClientToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientTokenResult.fromMap(result);
}

pulumi.Output<GetClientTokenResult> getClientTokenOutput(
  GetClientTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getClientToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClientTokenResult.fromMap);
}

/// Get the specified deny assignment.
///
/// Uses Azure REST API version 2024-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_deny_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDenyAssignmentResult> getDenyAssignment(
  GetDenyAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getDenyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDenyAssignmentResult.fromMap(result);
}

pulumi.Output<GetDenyAssignmentResult> getDenyAssignmentOutput(
  GetDenyAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getDenyAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDenyAssignmentResult.fromMap);
}

/// Gets a management lock at the resource group level.
///
/// Uses Azure REST API version 2020-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_management_lock_at_resource_group_level_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementLockAtResourceGroupLevelResult> getManagementLockAtResourceGroupLevel(
  GetManagementLockAtResourceGroupLevelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getManagementLockAtResourceGroupLevel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementLockAtResourceGroupLevelResult.fromMap(result);
}

pulumi.Output<GetManagementLockAtResourceGroupLevelResult> getManagementLockAtResourceGroupLevelOutput(
  GetManagementLockAtResourceGroupLevelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getManagementLockAtResourceGroupLevel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementLockAtResourceGroupLevelResult.fromMap);
}

/// Get the management lock of a resource or any level below resource.
///
/// Uses Azure REST API version 2020-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_management_lock_at_resource_level_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementLockAtResourceLevelResult> getManagementLockAtResourceLevel(
  GetManagementLockAtResourceLevelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getManagementLockAtResourceLevel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementLockAtResourceLevelResult.fromMap(result);
}

pulumi.Output<GetManagementLockAtResourceLevelResult> getManagementLockAtResourceLevelOutput(
  GetManagementLockAtResourceLevelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getManagementLockAtResourceLevel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementLockAtResourceLevelResult.fromMap);
}

/// Gets a management lock at the subscription level.
///
/// Uses Azure REST API version 2020-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_management_lock_at_subscription_level_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementLockAtSubscriptionLevelResult> getManagementLockAtSubscriptionLevel(
  GetManagementLockAtSubscriptionLevelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getManagementLockAtSubscriptionLevel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementLockAtSubscriptionLevelResult.fromMap(result);
}

pulumi.Output<GetManagementLockAtSubscriptionLevelResult> getManagementLockAtSubscriptionLevelOutput(
  GetManagementLockAtSubscriptionLevelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getManagementLockAtSubscriptionLevel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementLockAtSubscriptionLevelResult.fromMap);
}

/// Get a management lock by scope.
///
/// Uses Azure REST API version 2020-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_management_lock_by_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementLockByScopeResult> getManagementLockByScope(
  GetManagementLockByScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getManagementLockByScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementLockByScopeResult.fromMap(result);
}

pulumi.Output<GetManagementLockByScopeResult> getManagementLockByScopeOutput(
  GetManagementLockByScopeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getManagementLockByScope',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementLockByScopeResult.fromMap);
}

/// Get the specified role eligibility schedule request.
///
/// Uses Azure REST API version 2020-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_pim_role_eligibility_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPimRoleEligibilityScheduleResult> getPimRoleEligibilitySchedule(
  GetPimRoleEligibilityScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPimRoleEligibilitySchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPimRoleEligibilityScheduleResult.fromMap(result);
}

pulumi.Output<GetPimRoleEligibilityScheduleResult> getPimRoleEligibilityScheduleOutput(
  GetPimRoleEligibilityScheduleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPimRoleEligibilitySchedule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPimRoleEligibilityScheduleResult.fromMap);
}

/// This operation retrieves a single policy assignment, given its name and the scope it was created at.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2020-09-01, 2021-06-01, 2022-06-01, 2023-04-01, 2024-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyAssignmentResult> getPolicyAssignment(
  GetPolicyAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyAssignmentResult.fromMap(result);
}

pulumi.Output<GetPolicyAssignmentResult> getPolicyAssignmentOutput(
  GetPolicyAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyAssignmentResult.fromMap);
}

/// This operation retrieves the policy definition in the given subscription with the given name.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2020-09-01, 2021-06-01, 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyDefinitionResult> getPolicyDefinition(
  GetPolicyDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDefinitionResult.fromMap(result);
}

pulumi.Output<GetPolicyDefinitionResult> getPolicyDefinitionOutput(
  GetPolicyDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyDefinitionResult.fromMap);
}

/// This operation retrieves the policy definition in the given management group with the given name.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2020-09-01, 2021-06-01, 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_definition_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyDefinitionAtManagementGroupResult> getPolicyDefinitionAtManagementGroup(
  GetPolicyDefinitionAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyDefinitionAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDefinitionAtManagementGroupResult.fromMap(result);
}

pulumi.Output<GetPolicyDefinitionAtManagementGroupResult> getPolicyDefinitionAtManagementGroupOutput(
  GetPolicyDefinitionAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyDefinitionAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyDefinitionAtManagementGroupResult.fromMap);
}

/// This operation retrieves the policy definition version in the given subscription with the given name.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_definition_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyDefinitionVersionResult> getPolicyDefinitionVersion(
  GetPolicyDefinitionVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyDefinitionVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDefinitionVersionResult.fromMap(result);
}

pulumi.Output<GetPolicyDefinitionVersionResult> getPolicyDefinitionVersionOutput(
  GetPolicyDefinitionVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyDefinitionVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyDefinitionVersionResult.fromMap);
}

/// This operation retrieves the policy definition version in the given management group with the given name.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_definition_version_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyDefinitionVersionAtManagementGroupResult> getPolicyDefinitionVersionAtManagementGroup(
  GetPolicyDefinitionVersionAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyDefinitionVersionAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDefinitionVersionAtManagementGroupResult.fromMap(result);
}

pulumi.Output<GetPolicyDefinitionVersionAtManagementGroupResult> getPolicyDefinitionVersionAtManagementGroupOutput(
  GetPolicyDefinitionVersionAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyDefinitionVersionAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyDefinitionVersionAtManagementGroupResult.fromMap);
}

/// This operation retrieves a single policy exemption, given its name and the scope it was created at.
///
/// Uses Azure REST API version 2022-07-01-preview.
///
/// Other available API versions: 2020-07-01-preview, 2024-12-01-preview, 2025-12-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_exemption_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyExemptionResult> getPolicyExemption(
  GetPolicyExemptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyExemption',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyExemptionResult.fromMap(result);
}

pulumi.Output<GetPolicyExemptionResult> getPolicyExemptionOutput(
  GetPolicyExemptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicyExemption',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyExemptionResult.fromMap);
}

/// This operation retrieves the policy set definition in the given subscription with the given name.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2020-09-01, 2021-06-01, 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_set_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicySetDefinitionResult> getPolicySetDefinition(
  GetPolicySetDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicySetDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicySetDefinitionResult.fromMap(result);
}

pulumi.Output<GetPolicySetDefinitionResult> getPolicySetDefinitionOutput(
  GetPolicySetDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicySetDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicySetDefinitionResult.fromMap);
}

/// This operation retrieves the policy set definition in the given management group with the given name.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2020-09-01, 2021-06-01, 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_set_definition_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicySetDefinitionAtManagementGroupResult> getPolicySetDefinitionAtManagementGroup(
  GetPolicySetDefinitionAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicySetDefinitionAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicySetDefinitionAtManagementGroupResult.fromMap(result);
}

pulumi.Output<GetPolicySetDefinitionAtManagementGroupResult> getPolicySetDefinitionAtManagementGroupOutput(
  GetPolicySetDefinitionAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicySetDefinitionAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicySetDefinitionAtManagementGroupResult.fromMap);
}

/// This operation retrieves the policy set definition version in the given subscription with the given name and version.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_set_definition_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicySetDefinitionVersionResult> getPolicySetDefinitionVersion(
  GetPolicySetDefinitionVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicySetDefinitionVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicySetDefinitionVersionResult.fromMap(result);
}

pulumi.Output<GetPolicySetDefinitionVersionResult> getPolicySetDefinitionVersionOutput(
  GetPolicySetDefinitionVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicySetDefinitionVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicySetDefinitionVersionResult.fromMap);
}

/// This operation retrieves the policy set definition version in the given management group with the given name and version.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_policy_set_definition_version_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicySetDefinitionVersionAtManagementGroupResult> getPolicySetDefinitionVersionAtManagementGroup(
  GetPolicySetDefinitionVersionAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPolicySetDefinitionVersionAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicySetDefinitionVersionAtManagementGroupResult.fromMap(result);
}

pulumi.Output<GetPolicySetDefinitionVersionAtManagementGroupResult> getPolicySetDefinitionVersionAtManagementGroupOutput(
  GetPolicySetDefinitionVersionAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPolicySetDefinitionVersionAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicySetDefinitionVersionAtManagementGroupResult.fromMap);
}

/// Get a single private link association
///
/// Uses Azure REST API version 2020-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_private_link_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkAssociationResult> getPrivateLinkAssociation(
  GetPrivateLinkAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getPrivateLinkAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkAssociationResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkAssociationResult> getPrivateLinkAssociationOutput(
  GetPrivateLinkAssociationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getPrivateLinkAssociation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkAssociationResult.fromMap);
}

/// Get a resource management private link(resource-level).
///
/// Uses Azure REST API version 2020-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_resource_management_private_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceManagementPrivateLinkResult> getResourceManagementPrivateLink(
  GetResourceManagementPrivateLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getResourceManagementPrivateLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceManagementPrivateLinkResult.fromMap(result);
}

pulumi.Output<GetResourceManagementPrivateLinkResult> getResourceManagementPrivateLinkOutput(
  GetResourceManagementPrivateLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getResourceManagementPrivateLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourceManagementPrivateLinkResult.fromMap);
}

/// Get a role assignment by scope and name.
///
/// Uses Azure REST API version 2022-04-01.
///
/// Other available API versions: 2020-08-01-preview, 2020-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_role_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleAssignmentResult> getRoleAssignment(
  GetRoleAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getRoleAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleAssignmentResult.fromMap(result);
}

pulumi.Output<GetRoleAssignmentResult> getRoleAssignmentOutput(
  GetRoleAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getRoleAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoleAssignmentResult.fromMap);
}

/// Get role definition by ID (GUID).
///
/// Uses Azure REST API version 2022-05-01-preview.
///
/// Other available API versions: 2022-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_role_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleDefinitionResult> getRoleDefinition(
  GetRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleDefinitionResult.fromMap(result);
}

pulumi.Output<GetRoleDefinitionResult> getRoleDefinitionOutput(
  GetRoleDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getRoleDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoleDefinitionResult.fromMap);
}

/// Get the specified role management policy for a resource scope
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2020-10-01, 2020-10-01-preview, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_role_management_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleManagementPolicyResult> getRoleManagementPolicy(
  GetRoleManagementPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getRoleManagementPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleManagementPolicyResult.fromMap(result);
}

pulumi.Output<GetRoleManagementPolicyResult> getRoleManagementPolicyOutput(
  GetRoleManagementPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getRoleManagementPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoleManagementPolicyResult.fromMap);
}

/// Get the specified role management policy assignment for a resource scope
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2020-10-01, 2020-10-01-preview, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_role_management_policy_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleManagementPolicyAssignmentResult> getRoleManagementPolicyAssignment(
  GetRoleManagementPolicyAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getRoleManagementPolicyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleManagementPolicyAssignmentResult.fromMap(result);
}

pulumi.Output<GetRoleManagementPolicyAssignmentResult> getRoleManagementPolicyAssignmentOutput(
  GetRoleManagementPolicyAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getRoleManagementPolicyAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoleManagementPolicyAssignmentResult.fromMap);
}

/// Get access review history definition by definition Id
///
/// Uses Azure REST API version 2021-12-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_scope_access_review_history_definition_by_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeAccessReviewHistoryDefinitionByIdResult> getScopeAccessReviewHistoryDefinitionById(
  GetScopeAccessReviewHistoryDefinitionByIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getScopeAccessReviewHistoryDefinitionById',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeAccessReviewHistoryDefinitionByIdResult.fromMap(result);
}

pulumi.Output<GetScopeAccessReviewHistoryDefinitionByIdResult> getScopeAccessReviewHistoryDefinitionByIdOutput(
  GetScopeAccessReviewHistoryDefinitionByIdArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getScopeAccessReviewHistoryDefinitionById',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScopeAccessReviewHistoryDefinitionByIdResult.fromMap);
}

/// Get single access review definition
///
/// Uses Azure REST API version 2021-12-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_scope_access_review_schedule_definition_by_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeAccessReviewScheduleDefinitionByIdResult> getScopeAccessReviewScheduleDefinitionById(
  GetScopeAccessReviewScheduleDefinitionByIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getScopeAccessReviewScheduleDefinitionById',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeAccessReviewScheduleDefinitionByIdResult.fromMap(result);
}

pulumi.Output<GetScopeAccessReviewScheduleDefinitionByIdResult> getScopeAccessReviewScheduleDefinitionByIdOutput(
  GetScopeAccessReviewScheduleDefinitionByIdArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getScopeAccessReviewScheduleDefinitionById',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScopeAccessReviewScheduleDefinitionByIdResult.fromMap);
}

/// This operation retrieves a single variable, given its name and the subscription it was created at.
///
/// Uses Azure REST API version 2022-08-01-preview.
///
/// Other available API versions: 2024-12-01-preview, 2025-12-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_variable_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVariableResult> getVariable(
  GetVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableResult.fromMap(result);
}

pulumi.Output<GetVariableResult> getVariableOutput(
  GetVariableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getVariable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVariableResult.fromMap);
}

/// This operation retrieves a single variable, given its name and the  management group it was created at.
///
/// Uses Azure REST API version 2022-08-01-preview.
///
/// Other available API versions: 2024-12-01-preview, 2025-12-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_variable_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVariableAtManagementGroupResult> getVariableAtManagementGroup(
  GetVariableAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getVariableAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableAtManagementGroupResult.fromMap(result);
}

pulumi.Output<GetVariableAtManagementGroupResult> getVariableAtManagementGroupOutput(
  GetVariableAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getVariableAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVariableAtManagementGroupResult.fromMap);
}

/// This operation retrieves a single variable value; given its name, subscription it was created at and the variable it's created for.
///
/// Uses Azure REST API version 2022-08-01-preview.
///
/// Other available API versions: 2024-12-01-preview, 2025-12-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_variable_value_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVariableValueResult> getVariableValue(
  GetVariableValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getVariableValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableValueResult.fromMap(result);
}

pulumi.Output<GetVariableValueResult> getVariableValueOutput(
  GetVariableValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getVariableValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVariableValueResult.fromMap);
}

/// This operation retrieves a single variable value; given its name,  management group it was created at and the variable it's created for.
///
/// Uses Azure REST API version 2022-08-01-preview.
///
/// Other available API versions: 2024-12-01-preview, 2025-12-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_variable_value_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVariableValueAtManagementGroupResult> getVariableValueAtManagementGroup(
  GetVariableValueAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:getVariableValueAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableValueAtManagementGroupResult.fromMap(result);
}

pulumi.Output<GetVariableValueAtManagementGroupResult> getVariableValueAtManagementGroupOutput(
  GetVariableValueAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:getVariableValueAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVariableValueAtManagementGroupResult.fromMap);
}

/// This operation lists all the policy definition versions for all policy definitions within a subscription.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<ListPolicyDefinitionVersionAllResult> listPolicyDefinitionVersionAll(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:listPolicyDefinitionVersionAll',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPolicyDefinitionVersionAllResult.fromMap(result);
}

pulumi.Output<ListPolicyDefinitionVersionAllResult> listPolicyDefinitionVersionAllOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:listPolicyDefinitionVersionAll',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(ListPolicyDefinitionVersionAllResult.fromMap);
}

/// This operation lists all the policy definition versions for all policy definitions at the management group scope.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_list_policy_definition_version_all_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPolicyDefinitionVersionAllAtManagementGroupResult> listPolicyDefinitionVersionAllAtManagementGroup(
  ListPolicyDefinitionVersionAllAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:listPolicyDefinitionVersionAllAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPolicyDefinitionVersionAllAtManagementGroupResult.fromMap(result);
}

pulumi.Output<ListPolicyDefinitionVersionAllAtManagementGroupResult> listPolicyDefinitionVersionAllAtManagementGroupOutput(
  ListPolicyDefinitionVersionAllAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:listPolicyDefinitionVersionAllAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListPolicyDefinitionVersionAllAtManagementGroupResult.fromMap);
}

/// This operation lists all the built-in policy definition versions for all built-in policy definitions.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<ListPolicyDefinitionVersionAllBuiltinsResult> listPolicyDefinitionVersionAllBuiltins(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:listPolicyDefinitionVersionAllBuiltins',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPolicyDefinitionVersionAllBuiltinsResult.fromMap(result);
}

pulumi.Output<ListPolicyDefinitionVersionAllBuiltinsResult> listPolicyDefinitionVersionAllBuiltinsOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:listPolicyDefinitionVersionAllBuiltins',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(ListPolicyDefinitionVersionAllBuiltinsResult.fromMap);
}

/// This operation lists all the policy set definition versions for all policy set definitions within a subscription.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<ListPolicySetDefinitionVersionAllResult> listPolicySetDefinitionVersionAll(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:listPolicySetDefinitionVersionAll',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPolicySetDefinitionVersionAllResult.fromMap(result);
}

pulumi.Output<ListPolicySetDefinitionVersionAllResult> listPolicySetDefinitionVersionAllOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:listPolicySetDefinitionVersionAll',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(ListPolicySetDefinitionVersionAllResult.fromMap);
}

/// This operation lists all the policy set definition versions for all policy set definitions at the management group scope.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_list_policy_set_definition_version_all_at_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPolicySetDefinitionVersionAllAtManagementGroupResult> listPolicySetDefinitionVersionAllAtManagementGroup(
  ListPolicySetDefinitionVersionAllAtManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:listPolicySetDefinitionVersionAllAtManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPolicySetDefinitionVersionAllAtManagementGroupResult.fromMap(result);
}

pulumi.Output<ListPolicySetDefinitionVersionAllAtManagementGroupResult> listPolicySetDefinitionVersionAllAtManagementGroupOutput(
  ListPolicySetDefinitionVersionAllAtManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:listPolicySetDefinitionVersionAllAtManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListPolicySetDefinitionVersionAllAtManagementGroupResult.fromMap);
}

/// This operation lists all the built-in policy set definition versions for all built-in policy set definitions.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01, 2025-11-01, 2025-12-01-preview, 2026-01-01-preview, 2026-06-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<ListPolicySetDefinitionVersionAllBuiltinsResult> listPolicySetDefinitionVersionAllBuiltins(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:listPolicySetDefinitionVersionAllBuiltins',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPolicySetDefinitionVersionAllBuiltinsResult.fromMap(result);
}

pulumi.Output<ListPolicySetDefinitionVersionAllBuiltinsResult> listPolicySetDefinitionVersionAllBuiltinsOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:listPolicySetDefinitionVersionAllBuiltins',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(ListPolicySetDefinitionVersionAllBuiltinsResult.fromMap);
}

/// Use this function to list all subscriptions for the authenticated account. See https://learn.microsoft.com/en-us/rest/api/resources/subscriptions/list for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_list_subscriptions_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSubscriptionsResult> listSubscriptions(
  ListSubscriptionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:authorization:listSubscriptions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSubscriptionsResult.fromMap(result);
}

pulumi.Output<ListSubscriptionsResult> listSubscriptionsOutput(
  ListSubscriptionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:authorization:listSubscriptions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListSubscriptionsResult.fromMap);
}
