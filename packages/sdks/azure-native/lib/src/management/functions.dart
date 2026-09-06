import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_args.dart';
import 'get_entity_result.dart';
import 'get_hierarchy_setting_args.dart';
import 'get_hierarchy_setting_result.dart';
import 'get_management_group_args.dart';
import 'get_management_group_result.dart';
import 'get_management_group_subscription_args.dart';
import 'get_management_group_subscription_result.dart';
import 'get_service_group_args.dart';
import 'get_service_group_result.dart';
import 'list_service_group_ancestors_args.dart';
import 'list_service_group_ancestors_result.dart';

/// List all entities (Management Groups, Subscriptions, etc.) for the authenticated user.
///
/// Uses Azure REST API version 2023-04-01.
///
/// Other available API versions: 2021-04-01, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native management [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_management_get_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityResult> getEntity(
  GetEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:management:getEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityResult.fromMap(result);
}

pulumi.Output<GetEntityResult> getEntityOutput(
  GetEntityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:management:getEntity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityResult.fromMap);
}

/// Gets the hierarchy settings defined at the Management Group level. Settings can only be set on the root Management Group of the hierarchy.
///
/// Uses Azure REST API version 2023-04-01.
///
/// Other available API versions: 2021-04-01, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native management [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_management_get_hierarchy_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHierarchySettingResult> getHierarchySetting(
  GetHierarchySettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:management:getHierarchySetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHierarchySettingResult.fromMap(result);
}

pulumi.Output<GetHierarchySettingResult> getHierarchySettingOutput(
  GetHierarchySettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:management:getHierarchySetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHierarchySettingResult.fromMap);
}

/// Get the details of the management group.
///
/// Uses Azure REST API version 2023-04-01.
///
/// Other available API versions: 2021-04-01, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native management [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_management_get_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementGroupResult> getManagementGroup(
  GetManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:management:getManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementGroupResult.fromMap(result);
}

pulumi.Output<GetManagementGroupResult> getManagementGroupOutput(
  GetManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:management:getManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementGroupResult.fromMap);
}

/// Retrieves details about given subscription which is associated with the management group.
///
/// Uses Azure REST API version 2023-04-01.
///
/// Other available API versions: 2021-04-01, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native management [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_management_get_management_group_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementGroupSubscriptionResult> getManagementGroupSubscription(
  GetManagementGroupSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:management:getManagementGroupSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementGroupSubscriptionResult.fromMap(result);
}

pulumi.Output<GetManagementGroupSubscriptionResult> getManagementGroupSubscriptionOutput(
  GetManagementGroupSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:management:getManagementGroupSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementGroupSubscriptionResult.fromMap);
}

/// Get the details of the serviceGroup
///
/// Uses Azure REST API version 2024-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_management_get_service_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceGroupResult> getServiceGroup(
  GetServiceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:management:getServiceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceGroupResult.fromMap(result);
}

pulumi.Output<GetServiceGroupResult> getServiceGroupOutput(
  GetServiceGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:management:getServiceGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceGroupResult.fromMap);
}

/// Get the details of the serviceGroup's ancestors
///
/// Uses Azure REST API version 2024-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_management_list_service_group_ancestors_args_doc}
/// [options] Invoke options controlling this call.
Future<ListServiceGroupAncestorsResult> listServiceGroupAncestors(
  ListServiceGroupAncestorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:management:listServiceGroupAncestors',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListServiceGroupAncestorsResult.fromMap(result);
}

pulumi.Output<ListServiceGroupAncestorsResult> listServiceGroupAncestorsOutput(
  ListServiceGroupAncestorsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:management:listServiceGroupAncestors',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListServiceGroupAncestorsResult.fromMap);
}
