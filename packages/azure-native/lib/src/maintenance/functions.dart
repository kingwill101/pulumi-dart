import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_assignment_args.dart';
import 'get_configuration_assignment_parent_args.dart';
import 'get_configuration_assignment_parent_result.dart';
import 'get_configuration_assignment_result.dart';
import 'get_configuration_assignments_for_resource_group_args.dart';
import 'get_configuration_assignments_for_resource_group_result.dart';
import 'get_configuration_assignments_for_subscription_args.dart';
import 'get_configuration_assignments_for_subscription_result.dart';
import 'get_maintenance_configuration_args.dart';
import 'get_maintenance_configuration_result.dart';

/// Get configuration assignment for resource..
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maintenance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maintenance_get_configuration_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationAssignmentResult> getConfigurationAssignment(
  GetConfigurationAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maintenance:getConfigurationAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationAssignmentResult.fromMap(result);
}

/// Get configuration assignment for resource..
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maintenance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maintenance_get_configuration_assignment_parent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationAssignmentParentResult> getConfigurationAssignmentParent(
  GetConfigurationAssignmentParentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maintenance:getConfigurationAssignmentParent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationAssignmentParentResult.fromMap(result);
}

/// Get configuration assignment for resource..
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-04-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maintenance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maintenance_get_configuration_assignments_for_resource_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationAssignmentsForResourceGroupResult> getConfigurationAssignmentsForResourceGroup(
  GetConfigurationAssignmentsForResourceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maintenance:getConfigurationAssignmentsForResourceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationAssignmentsForResourceGroupResult.fromMap(result);
}

/// Get configuration assignment for resource.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-04-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maintenance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maintenance_get_configuration_assignments_for_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationAssignmentsForSubscriptionResult> getConfigurationAssignmentsForSubscription(
  GetConfigurationAssignmentsForSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maintenance:getConfigurationAssignmentsForSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationAssignmentsForSubscriptionResult.fromMap(result);
}

/// Get Configuration record
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maintenance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maintenance_get_maintenance_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMaintenanceConfigurationResult> getMaintenanceConfiguration(
  GetMaintenanceConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maintenance:getMaintenanceConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMaintenanceConfigurationResult.fromMap(result);
}
