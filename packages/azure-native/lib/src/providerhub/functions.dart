import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorized_application_args.dart';
import 'get_authorized_application_result.dart';
import 'get_custom_rollout_args.dart';
import 'get_custom_rollout_result.dart';
import 'get_default_rollout_args.dart';
import 'get_default_rollout_result.dart';
import 'get_notification_registration_args.dart';
import 'get_notification_registration_result.dart';
import 'get_provider_monitor_setting_args.dart';
import 'get_provider_monitor_setting_result.dart';
import 'get_provider_registration_args.dart';
import 'get_provider_registration_result.dart';
import 'get_resource_type_registration_args.dart';
import 'get_resource_type_registration_result.dart';
import 'get_skus_args.dart';
import 'get_skus_nested_resource_type_first_args.dart';
import 'get_skus_nested_resource_type_first_result.dart';
import 'get_skus_nested_resource_type_second_args.dart';
import 'get_skus_nested_resource_type_second_result.dart';
import 'get_skus_nested_resource_type_third_args.dart';
import 'get_skus_nested_resource_type_third_result.dart';
import 'get_skus_result.dart';

/// Gets the authorized application details.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_authorized_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizedApplicationResult> getAuthorizedApplication(
  GetAuthorizedApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getAuthorizedApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedApplicationResult.fromMap(result);
}

/// Gets the custom rollout details.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_custom_rollout_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomRolloutResult> getCustomRollout(
  GetCustomRolloutArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getCustomRollout',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomRolloutResult.fromMap(result);
}

/// Gets the default rollout details.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_default_rollout_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultRolloutResult> getDefaultRollout(
  GetDefaultRolloutArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getDefaultRollout',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultRolloutResult.fromMap(result);
}

/// Gets the notification registration details.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_notification_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationRegistrationResult> getNotificationRegistration(
  GetNotificationRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getNotificationRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationRegistrationResult.fromMap(result);
}

/// Gets the provider monitor setting details.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_provider_monitor_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderMonitorSettingResult> getProviderMonitorSetting(
  GetProviderMonitorSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getProviderMonitorSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderMonitorSettingResult.fromMap(result);
}

/// Gets the provider registration details.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_provider_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderRegistrationResult> getProviderRegistration(
  GetProviderRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getProviderRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderRegistrationResult.fromMap(result);
}

/// Gets a resource type details in the given subscription and provider.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_resource_type_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceTypeRegistrationResult> getResourceTypeRegistration(
  GetResourceTypeRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getResourceTypeRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceTypeRegistrationResult.fromMap(result);
}

/// Gets the sku details for the given resource type and sku name.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_skus_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSkusResult> getSkus(
  GetSkusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getSkus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSkusResult.fromMap(result);
}

/// Gets the sku details for the given resource type and sku name.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_skus_nested_resource_type_first_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSkusNestedResourceTypeFirstResult> getSkusNestedResourceTypeFirst(
  GetSkusNestedResourceTypeFirstArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getSkusNestedResourceTypeFirst',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSkusNestedResourceTypeFirstResult.fromMap(result);
}

/// Gets the sku details for the given resource type and sku name.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_skus_nested_resource_type_second_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSkusNestedResourceTypeSecondResult> getSkusNestedResourceTypeSecond(
  GetSkusNestedResourceTypeSecondArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getSkusNestedResourceTypeSecond',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSkusNestedResourceTypeSecondResult.fromMap(result);
}

/// Gets the sku details for the given resource type and sku name.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_skus_nested_resource_type_third_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSkusNestedResourceTypeThirdResult> getSkusNestedResourceTypeThird(
  GetSkusNestedResourceTypeThirdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getSkusNestedResourceTypeThird',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSkusNestedResourceTypeThirdResult.fromMap(result);
}
