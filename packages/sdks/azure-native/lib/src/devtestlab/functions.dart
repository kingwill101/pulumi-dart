import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_artifact_source_args.dart';
import 'get_artifact_source_result.dart';
import 'get_custom_image_args.dart';
import 'get_custom_image_result.dart';
import 'get_disk_args.dart';
import 'get_disk_result.dart';
import 'get_environment_args.dart';
import 'get_environment_result.dart';
import 'get_formula_args.dart';
import 'get_formula_result.dart';
import 'get_global_schedule_args.dart';
import 'get_global_schedule_result.dart';
import 'get_lab_args.dart';
import 'get_lab_result.dart';
import 'get_notification_channel_args.dart';
import 'get_notification_channel_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';
import 'get_schedule_args.dart';
import 'get_schedule_result.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';
import 'get_service_fabric_args.dart';
import 'get_service_fabric_result.dart';
import 'get_service_fabric_schedule_args.dart';
import 'get_service_fabric_schedule_result.dart';
import 'get_service_runner_args.dart';
import 'get_service_runner_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'get_virtual_machine_args.dart';
import 'get_virtual_machine_rdp_file_contents_args.dart';
import 'get_virtual_machine_rdp_file_contents_result.dart';
import 'get_virtual_machine_result.dart';
import 'get_virtual_machine_schedule_args.dart';
import 'get_virtual_machine_schedule_result.dart';
import 'get_virtual_network_args.dart';
import 'get_virtual_network_result.dart';
import 'list_lab_vhds_args.dart';
import 'list_lab_vhds_result.dart';
import 'list_schedule_applicable_args.dart';
import 'list_schedule_applicable_result.dart';
import 'list_service_fabric_applicable_schedules_args.dart';
import 'list_service_fabric_applicable_schedules_result.dart';
import 'list_virtual_machine_applicable_schedules_args.dart';
import 'list_virtual_machine_applicable_schedules_result.dart';

/// Get artifact source.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_artifact_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArtifactSourceResult> getArtifactSource(
  GetArtifactSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getArtifactSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactSourceResult.fromMap(result);
}

/// Get custom image.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_custom_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomImageResult> getCustomImage(
  GetCustomImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getCustomImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomImageResult.fromMap(result);
}

/// Get disk.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_disk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskResult> getDisk(
  GetDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskResult.fromMap(result);
}

/// Get environment.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

/// Get formula.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_formula_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFormulaResult> getFormula(
  GetFormulaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getFormula',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFormulaResult.fromMap(result);
}

/// Get schedule.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_global_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalScheduleResult> getGlobalSchedule(
  GetGlobalScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getGlobalSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalScheduleResult.fromMap(result);
}

/// Get lab.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_lab_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLabResult> getLab(
  GetLabArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getLab',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLabResult.fromMap(result);
}

/// Get notification channel.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_notification_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationChannelResult> getNotificationChannel(
  GetNotificationChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getNotificationChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationChannelResult.fromMap(result);
}

/// Get policy.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

/// Get schedule.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleResult> getSchedule(
  GetScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult.fromMap(result);
}

/// Get secret.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

/// Get service fabric.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_service_fabric_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceFabricResult> getServiceFabric(
  GetServiceFabricArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getServiceFabric',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceFabricResult.fromMap(result);
}

/// Get schedule.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_service_fabric_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceFabricScheduleResult> getServiceFabricSchedule(
  GetServiceFabricScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getServiceFabricSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceFabricScheduleResult.fromMap(result);
}

/// Get service runner.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_service_runner_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceRunnerResult> getServiceRunner(
  GetServiceRunnerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getServiceRunner',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceRunnerResult.fromMap(result);
}

/// Get user profile.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

/// Get virtual machine.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineResult> getVirtualMachine(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getVirtualMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineResult.fromMap(result);
}

/// Gets a string that represents the contents of the RDP file for the virtual machine
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_virtual_machine_rdp_file_contents_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineRdpFileContentsResult> getVirtualMachineRdpFileContents(
  GetVirtualMachineRdpFileContentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getVirtualMachineRdpFileContents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineRdpFileContentsResult.fromMap(result);
}

/// Get schedule.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_virtual_machine_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineScheduleResult> getVirtualMachineSchedule(
  GetVirtualMachineScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getVirtualMachineSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineScheduleResult.fromMap(result);
}

/// Get virtual network.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_get_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkResult> getVirtualNetwork(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:getVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkResult.fromMap(result);
}

/// List disk images available for custom image creation.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_list_lab_vhds_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLabVhdsResult> listLabVhds(
  ListLabVhdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:listLabVhds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLabVhdsResult.fromMap(result);
}

/// Lists all applicable schedules
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_list_schedule_applicable_args_doc}
/// [options] Invoke options controlling this call.
Future<ListScheduleApplicableResult> listScheduleApplicable(
  ListScheduleApplicableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:listScheduleApplicable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListScheduleApplicableResult.fromMap(result);
}

/// Lists the applicable start/stop schedules, if any.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_list_service_fabric_applicable_schedules_args_doc}
/// [options] Invoke options controlling this call.
Future<ListServiceFabricApplicableSchedulesResult>
listServiceFabricApplicableSchedules(
  ListServiceFabricApplicableSchedulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:listServiceFabricApplicableSchedules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListServiceFabricApplicableSchedulesResult.fromMap(result);
}

/// Lists the applicable start/stop schedules, if any.
///
/// Uses Azure REST API version 2018-09-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_devtestlab_list_virtual_machine_applicable_schedules_args_doc}
/// [options] Invoke options controlling this call.
Future<ListVirtualMachineApplicableSchedulesResult>
listVirtualMachineApplicableSchedules(
  ListVirtualMachineApplicableSchedulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devtestlab:listVirtualMachineApplicableSchedules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListVirtualMachineApplicableSchedulesResult.fromMap(result);
}
