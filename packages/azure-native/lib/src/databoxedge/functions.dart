import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_arc_addon_args.dart';
import 'get_arc_addon_result.dart';
import 'get_bandwidth_schedule_args.dart';
import 'get_bandwidth_schedule_result.dart';
import 'get_cloud_edge_management_role_args.dart';
import 'get_cloud_edge_management_role_result.dart';
import 'get_container_args.dart';
import 'get_container_result.dart';
import 'get_device_args.dart';
import 'get_device_extended_information_args.dart';
import 'get_device_extended_information_result.dart';
import 'get_device_result.dart';
import 'get_file_event_trigger_args.dart';
import 'get_file_event_trigger_result.dart';
import 'get_io_taddon_args.dart';
import 'get_io_taddon_result.dart';
import 'get_io_trole_args.dart';
import 'get_io_trole_result.dart';
import 'get_kubernetes_role_args.dart';
import 'get_kubernetes_role_result.dart';
import 'get_mecrole_args.dart';
import 'get_mecrole_result.dart';
import 'get_monitoring_config_args.dart';
import 'get_monitoring_config_result.dart';
import 'get_order_args.dart';
import 'get_order_result.dart';
import 'get_periodic_timer_event_trigger_args.dart';
import 'get_periodic_timer_event_trigger_result.dart';
import 'get_share_args.dart';
import 'get_share_result.dart';
import 'get_storage_account_args.dart';
import 'get_storage_account_credential_args.dart';
import 'get_storage_account_credential_result.dart';
import 'get_storage_account_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'list_order_dcaccess_code_args.dart';
import 'list_order_dcaccess_code_result.dart';

/// Gets a specific addon by name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_arc_addon_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArcAddonResult> getArcAddon(
  GetArcAddonArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getArcAddon',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArcAddonResult.fromMap(result);
}

/// Gets the properties of the specified bandwidth schedule.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_bandwidth_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBandwidthScheduleResult> getBandwidthSchedule(
  GetBandwidthScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getBandwidthSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBandwidthScheduleResult.fromMap(result);
}

/// Gets a specific role by name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_cloud_edge_management_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudEdgeManagementRoleResult> getCloudEdgeManagementRole(
  GetCloudEdgeManagementRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getCloudEdgeManagementRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudEdgeManagementRoleResult.fromMap(result);
}

/// Represents a container on the  Data Box Edge/Gateway device.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerResult> getContainer(
  GetContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerResult.fromMap(result);
}

/// Gets the properties of the Data Box Edge/Data Box Gateway device.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}

/// Gets additional information for the specified Azure Stack Edge/Data Box Gateway device.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_device_extended_information_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceExtendedInformationResult> getDeviceExtendedInformation(
  GetDeviceExtendedInformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getDeviceExtendedInformation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceExtendedInformationResult.fromMap(result);
}

/// Get a specific trigger by name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_file_event_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileEventTriggerResult> getFileEventTrigger(
  GetFileEventTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getFileEventTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileEventTriggerResult.fromMap(result);
}

/// Gets a specific addon by name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_io_taddon_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIoTAddonResult> getIoTAddon(
  GetIoTAddonArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getIoTAddon',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIoTAddonResult.fromMap(result);
}

/// Gets a specific role by name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_io_trole_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIoTRoleResult> getIoTRole(
  GetIoTRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getIoTRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIoTRoleResult.fromMap(result);
}

/// Gets a specific role by name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_kubernetes_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesRoleResult> getKubernetesRole(
  GetKubernetesRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getKubernetesRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesRoleResult.fromMap(result);
}

/// Gets a specific role by name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_mecrole_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMECRoleResult> getMECRole(
  GetMECRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getMECRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMECRoleResult.fromMap(result);
}

/// The metric setting details for the role
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_monitoring_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitoringConfigResult> getMonitoringConfig(
  GetMonitoringConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getMonitoringConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitoringConfigResult.fromMap(result);
}

/// The order details.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_order_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrderResult> getOrder(
  GetOrderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getOrder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderResult.fromMap(result);
}

/// Get a specific trigger by name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_periodic_timer_event_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeriodicTimerEventTriggerResult> getPeriodicTimerEventTrigger(
  GetPeriodicTimerEventTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getPeriodicTimerEventTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeriodicTimerEventTriggerResult.fromMap(result);
}

/// Represents a share on the  Data Box Edge/Gateway device.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_share_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShareResult> getShare(
  GetShareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getShare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShareResult.fromMap(result);
}

/// Represents a Storage Account on the  Data Box Edge/Gateway device.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_storage_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageAccountResult> getStorageAccount(
  GetStorageAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getStorageAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageAccountResult.fromMap(result);
}

/// Gets the properties of the specified storage account credential.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_storage_account_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageAccountCredentialResult> getStorageAccountCredential(
  GetStorageAccountCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getStorageAccountCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageAccountCredentialResult.fromMap(result);
}

/// Gets the properties of the specified user.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

/// DC Access code in the case of Self Managed Shipping.
///
/// Uses Azure REST API version 2023-07-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_list_order_dcaccess_code_args_doc}
/// [options] Invoke options controlling this call.
Future<ListOrderDCAccessCodeResult> listOrderDCAccessCode(
  ListOrderDCAccessCodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databoxedge:listOrderDCAccessCode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListOrderDCAccessCodeResult.fromMap(result);
}
