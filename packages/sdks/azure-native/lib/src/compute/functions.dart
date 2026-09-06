import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_set_args.dart';
import 'get_availability_set_result.dart';
import 'get_capacity_reservation_args.dart';
import 'get_capacity_reservation_group_args.dart';
import 'get_capacity_reservation_group_result.dart';
import 'get_capacity_reservation_result.dart';
import 'get_dedicated_host_args.dart';
import 'get_dedicated_host_group_args.dart';
import 'get_dedicated_host_group_result.dart';
import 'get_dedicated_host_result.dart';
import 'get_disk_access_aprivate_endpoint_connection_args.dart';
import 'get_disk_access_aprivate_endpoint_connection_result.dart';
import 'get_disk_access_args.dart';
import 'get_disk_access_result.dart';
import 'get_disk_args.dart';
import 'get_disk_encryption_set_args.dart';
import 'get_disk_encryption_set_result.dart';
import 'get_disk_result.dart';
import 'get_gallery_application_args.dart';
import 'get_gallery_application_result.dart';
import 'get_gallery_application_version_args.dart';
import 'get_gallery_application_version_result.dart';
import 'get_gallery_args.dart';
import 'get_gallery_image_args.dart';
import 'get_gallery_image_result.dart';
import 'get_gallery_image_version_args.dart';
import 'get_gallery_image_version_result.dart';
import 'get_gallery_in_vmaccess_control_profile_args.dart';
import 'get_gallery_in_vmaccess_control_profile_result.dart';
import 'get_gallery_in_vmaccess_control_profile_version_args.dart';
import 'get_gallery_in_vmaccess_control_profile_version_result.dart';
import 'get_gallery_result.dart';
import 'get_gallery_script_args.dart';
import 'get_gallery_script_result.dart';
import 'get_gallery_script_version_args.dart';
import 'get_gallery_script_version_result.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';
import 'get_log_analytic_export_request_rate_by_interval_args.dart';
import 'get_log_analytic_export_request_rate_by_interval_result.dart';
import 'get_log_analytic_export_throttled_requests_args.dart';
import 'get_log_analytic_export_throttled_requests_result.dart';
import 'get_proximity_placement_group_args.dart';
import 'get_proximity_placement_group_result.dart';
import 'get_restore_point_args.dart';
import 'get_restore_point_collection_args.dart';
import 'get_restore_point_collection_result.dart';
import 'get_restore_point_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';
import 'get_ssh_public_key_args.dart';
import 'get_ssh_public_key_result.dart';
import 'get_virtual_machine_args.dart';
import 'get_virtual_machine_extension_args.dart';
import 'get_virtual_machine_extension_result.dart';
import 'get_virtual_machine_result.dart';
import 'get_virtual_machine_run_command_by_virtual_machine_args.dart';
import 'get_virtual_machine_run_command_by_virtual_machine_result.dart';
import 'get_virtual_machine_scale_set_args.dart';
import 'get_virtual_machine_scale_set_extension_args.dart';
import 'get_virtual_machine_scale_set_extension_result.dart';
import 'get_virtual_machine_scale_set_result.dart';
import 'get_virtual_machine_scale_set_vmargs.dart';
import 'get_virtual_machine_scale_set_vmextension_args.dart';
import 'get_virtual_machine_scale_set_vmextension_result.dart';
import 'get_virtual_machine_scale_set_vmresult.dart';
import 'get_virtual_machine_scale_set_vmrun_command_args.dart';
import 'get_virtual_machine_scale_set_vmrun_command_result.dart';

/// Retrieves information about an availability set.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_availability_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvailabilitySetResult> getAvailabilitySet(
  GetAvailabilitySetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getAvailabilitySet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvailabilitySetResult.fromMap(result);
}

pulumi.Output<GetAvailabilitySetResult> getAvailabilitySetOutput(
  GetAvailabilitySetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getAvailabilitySet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAvailabilitySetResult.fromMap);
}

/// The operation that retrieves information about the capacity reservation.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_capacity_reservation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityReservationResult> getCapacityReservation(
  GetCapacityReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getCapacityReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityReservationResult.fromMap(result);
}

pulumi.Output<GetCapacityReservationResult> getCapacityReservationOutput(
  GetCapacityReservationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getCapacityReservation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCapacityReservationResult.fromMap);
}

/// The operation that retrieves information about a capacity reservation group.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_capacity_reservation_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityReservationGroupResult> getCapacityReservationGroup(
  GetCapacityReservationGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getCapacityReservationGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityReservationGroupResult.fromMap(result);
}

pulumi.Output<GetCapacityReservationGroupResult> getCapacityReservationGroupOutput(
  GetCapacityReservationGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getCapacityReservationGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCapacityReservationGroupResult.fromMap);
}

/// Retrieves information about a dedicated host.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_dedicated_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHostResult> getDedicatedHost(
  GetDedicatedHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getDedicatedHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostResult.fromMap(result);
}

pulumi.Output<GetDedicatedHostResult> getDedicatedHostOutput(
  GetDedicatedHostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getDedicatedHost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDedicatedHostResult.fromMap);
}

/// Retrieves information about a dedicated host group.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_dedicated_host_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHostGroupResult> getDedicatedHostGroup(
  GetDedicatedHostGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getDedicatedHostGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostGroupResult.fromMap(result);
}

pulumi.Output<GetDedicatedHostGroupResult> getDedicatedHostGroupOutput(
  GetDedicatedHostGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getDedicatedHostGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDedicatedHostGroupResult.fromMap);
}

/// Gets information about a disk.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02, 2026-03-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_disk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskResult> getDisk(
  GetDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskResult.fromMap(result);
}

pulumi.Output<GetDiskResult> getDiskOutput(
  GetDiskArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getDisk',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiskResult.fromMap);
}

/// Gets information about a disk access resource.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02, 2026-03-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_disk_access_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskAccessResult> getDiskAccess(
  GetDiskAccessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getDiskAccess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskAccessResult.fromMap(result);
}

pulumi.Output<GetDiskAccessResult> getDiskAccessOutput(
  GetDiskAccessArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getDiskAccess',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiskAccessResult.fromMap);
}

/// Gets information about a private endpoint connection under a disk access resource.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02, 2026-03-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_disk_access_aprivate_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskAccessAPrivateEndpointConnectionResult> getDiskAccessAPrivateEndpointConnection(
  GetDiskAccessAPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getDiskAccessAPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskAccessAPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetDiskAccessAPrivateEndpointConnectionResult> getDiskAccessAPrivateEndpointConnectionOutput(
  GetDiskAccessAPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getDiskAccessAPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiskAccessAPrivateEndpointConnectionResult.fromMap);
}

/// Gets information about a disk encryption set.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02, 2026-03-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_disk_encryption_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskEncryptionSetResult> getDiskEncryptionSet(
  GetDiskEncryptionSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getDiskEncryptionSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskEncryptionSetResult.fromMap(result);
}

pulumi.Output<GetDiskEncryptionSetResult> getDiskEncryptionSetOutput(
  GetDiskEncryptionSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getDiskEncryptionSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiskEncryptionSetResult.fromMap);
}

/// Retrieves information about a Shared Image Gallery.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_gallery_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryResult> getGallery(
  GetGalleryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getGallery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryResult.fromMap(result);
}

pulumi.Output<GetGalleryResult> getGalleryOutput(
  GetGalleryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getGallery',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryResult.fromMap);
}

/// Retrieves information about a gallery Application Definition.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_gallery_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryApplicationResult> getGalleryApplication(
  GetGalleryApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getGalleryApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryApplicationResult.fromMap(result);
}

pulumi.Output<GetGalleryApplicationResult> getGalleryApplicationOutput(
  GetGalleryApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getGalleryApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryApplicationResult.fromMap);
}

/// Retrieves information about a gallery Application Version.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_gallery_application_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryApplicationVersionResult> getGalleryApplicationVersion(
  GetGalleryApplicationVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getGalleryApplicationVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryApplicationVersionResult.fromMap(result);
}

pulumi.Output<GetGalleryApplicationVersionResult> getGalleryApplicationVersionOutput(
  GetGalleryApplicationVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getGalleryApplicationVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryApplicationVersionResult.fromMap);
}

/// Retrieves information about a gallery image definition.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_gallery_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryImageResult> getGalleryImage(
  GetGalleryImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getGalleryImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryImageResult.fromMap(result);
}

pulumi.Output<GetGalleryImageResult> getGalleryImageOutput(
  GetGalleryImageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getGalleryImage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryImageResult.fromMap);
}

/// Retrieves information about a gallery image version.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_gallery_image_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryImageVersionResult> getGalleryImageVersion(
  GetGalleryImageVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getGalleryImageVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryImageVersionResult.fromMap(result);
}

pulumi.Output<GetGalleryImageVersionResult> getGalleryImageVersionOutput(
  GetGalleryImageVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getGalleryImageVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryImageVersionResult.fromMap);
}

/// Retrieves information about a gallery inVMAccessControlProfile.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_gallery_in_vmaccess_control_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryInVMAccessControlProfileResult> getGalleryInVMAccessControlProfile(
  GetGalleryInVMAccessControlProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getGalleryInVMAccessControlProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryInVMAccessControlProfileResult.fromMap(result);
}

pulumi.Output<GetGalleryInVMAccessControlProfileResult> getGalleryInVMAccessControlProfileOutput(
  GetGalleryInVMAccessControlProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getGalleryInVMAccessControlProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryInVMAccessControlProfileResult.fromMap);
}

/// Retrieves information about a gallery inVMAccessControlProfile version.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_gallery_in_vmaccess_control_profile_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryInVMAccessControlProfileVersionResult> getGalleryInVMAccessControlProfileVersion(
  GetGalleryInVMAccessControlProfileVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getGalleryInVMAccessControlProfileVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryInVMAccessControlProfileVersionResult.fromMap(result);
}

pulumi.Output<GetGalleryInVMAccessControlProfileVersionResult> getGalleryInVMAccessControlProfileVersionOutput(
  GetGalleryInVMAccessControlProfileVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getGalleryInVMAccessControlProfileVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryInVMAccessControlProfileVersionResult.fromMap);
}

/// Retrieves information about a gallery script definition.
///
/// Uses Azure REST API version 2025-03-03.
///
/// Other available API versions: 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_gallery_script_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryScriptResult> getGalleryScript(
  GetGalleryScriptArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getGalleryScript',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryScriptResult.fromMap(result);
}

pulumi.Output<GetGalleryScriptResult> getGalleryScriptOutput(
  GetGalleryScriptArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getGalleryScript',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryScriptResult.fromMap);
}

/// Custom ArmResourceRead operation template with CloudError as Error
///
/// Uses Azure REST API version 2025-03-03.
///
/// Other available API versions: 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_gallery_script_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryScriptVersionResult> getGalleryScriptVersion(
  GetGalleryScriptVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getGalleryScriptVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryScriptVersionResult.fromMap(result);
}

pulumi.Output<GetGalleryScriptVersionResult> getGalleryScriptVersionOutput(
  GetGalleryScriptVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getGalleryScriptVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryScriptVersionResult.fromMap);
}

/// Gets an image.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

pulumi.Output<GetImageResult> getImageOutput(
  GetImageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getImage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImageResult.fromMap);
}

/// Export logs that show Api requests made by this subscription in the given time window to show throttling activities.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_log_analytic_export_request_rate_by_interval_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogAnalyticExportRequestRateByIntervalResult> getLogAnalyticExportRequestRateByInterval(
  GetLogAnalyticExportRequestRateByIntervalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getLogAnalyticExportRequestRateByInterval',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogAnalyticExportRequestRateByIntervalResult.fromMap(result);
}

pulumi.Output<GetLogAnalyticExportRequestRateByIntervalResult> getLogAnalyticExportRequestRateByIntervalOutput(
  GetLogAnalyticExportRequestRateByIntervalArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getLogAnalyticExportRequestRateByInterval',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogAnalyticExportRequestRateByIntervalResult.fromMap);
}

/// Export logs that show total throttled Api requests for this subscription in the given time window.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_log_analytic_export_throttled_requests_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogAnalyticExportThrottledRequestsResult> getLogAnalyticExportThrottledRequests(
  GetLogAnalyticExportThrottledRequestsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getLogAnalyticExportThrottledRequests',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogAnalyticExportThrottledRequestsResult.fromMap(result);
}

pulumi.Output<GetLogAnalyticExportThrottledRequestsResult> getLogAnalyticExportThrottledRequestsOutput(
  GetLogAnalyticExportThrottledRequestsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getLogAnalyticExportThrottledRequests',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogAnalyticExportThrottledRequestsResult.fromMap);
}

/// Retrieves information about a proximity placement group .
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_proximity_placement_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProximityPlacementGroupResult> getProximityPlacementGroup(
  GetProximityPlacementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getProximityPlacementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProximityPlacementGroupResult.fromMap(result);
}

pulumi.Output<GetProximityPlacementGroupResult> getProximityPlacementGroupOutput(
  GetProximityPlacementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getProximityPlacementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProximityPlacementGroupResult.fromMap);
}

/// The operation to get the restore point.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_restore_point_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestorePointResult> getRestorePoint(
  GetRestorePointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getRestorePoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestorePointResult.fromMap(result);
}

pulumi.Output<GetRestorePointResult> getRestorePointOutput(
  GetRestorePointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getRestorePoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRestorePointResult.fromMap);
}

/// The operation to get the restore point collection.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_restore_point_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestorePointCollectionResult> getRestorePointCollection(
  GetRestorePointCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getRestorePointCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestorePointCollectionResult.fromMap(result);
}

pulumi.Output<GetRestorePointCollectionResult> getRestorePointCollectionOutput(
  GetRestorePointCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getRestorePointCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRestorePointCollectionResult.fromMap);
}

/// Gets information about a snapshot.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02, 2026-03-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

pulumi.Output<GetSnapshotResult> getSnapshotOutput(
  GetSnapshotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getSnapshot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSnapshotResult.fromMap);
}

/// Retrieves information about an SSH public key.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_ssh_public_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSshPublicKeyResult> getSshPublicKey(
  GetSshPublicKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getSshPublicKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshPublicKeyResult.fromMap(result);
}

pulumi.Output<GetSshPublicKeyResult> getSshPublicKeyOutput(
  GetSshPublicKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getSshPublicKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSshPublicKeyResult.fromMap);
}

/// Retrieves information about the model view or the instance view of a virtual machine.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineResult> getVirtualMachine(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineResult> getVirtualMachineOutput(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineResult.fromMap);
}

/// The operation to get the extension.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineExtensionResult> getVirtualMachineExtension(
  GetVirtualMachineExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineExtensionResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineExtensionResult> getVirtualMachineExtensionOutput(
  GetVirtualMachineExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineExtensionResult.fromMap);
}

/// The operation to get the run command.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_run_command_by_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineRunCommandByVirtualMachineResult> getVirtualMachineRunCommandByVirtualMachine(
  GetVirtualMachineRunCommandByVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineRunCommandByVirtualMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineRunCommandByVirtualMachineResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineRunCommandByVirtualMachineResult> getVirtualMachineRunCommandByVirtualMachineOutput(
  GetVirtualMachineRunCommandByVirtualMachineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineRunCommandByVirtualMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineRunCommandByVirtualMachineResult.fromMap);
}

/// Display information about a virtual machine scale set.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_scale_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineScaleSetResult> getVirtualMachineScaleSet(
  GetVirtualMachineScaleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineScaleSetResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineScaleSetResult> getVirtualMachineScaleSetOutput(
  GetVirtualMachineScaleSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineScaleSetResult.fromMap);
}

/// The operation to get the extension.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_scale_set_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineScaleSetExtensionResult> getVirtualMachineScaleSetExtension(
  GetVirtualMachineScaleSetExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSetExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineScaleSetExtensionResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineScaleSetExtensionResult> getVirtualMachineScaleSetExtensionOutput(
  GetVirtualMachineScaleSetExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSetExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineScaleSetExtensionResult.fromMap);
}

/// Gets a virtual machine from a VM scale set.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_scale_set_vmargs_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineScaleSetVMResult> getVirtualMachineScaleSetVM(
  GetVirtualMachineScaleSetVMArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSetVM',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineScaleSetVMResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineScaleSetVMResult> getVirtualMachineScaleSetVMOutput(
  GetVirtualMachineScaleSetVMArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSetVM',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineScaleSetVMResult.fromMap);
}

/// The operation to get the VMSS VM extension.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_scale_set_vmextension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineScaleSetVMExtensionResult> getVirtualMachineScaleSetVMExtension(
  GetVirtualMachineScaleSetVMExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSetVMExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineScaleSetVMExtensionResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineScaleSetVMExtensionResult> getVirtualMachineScaleSetVMExtensionOutput(
  GetVirtualMachineScaleSetVMExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSetVMExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineScaleSetVMExtensionResult.fromMap);
}

/// The operation to get the VMSS VM run command.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_scale_set_vmrun_command_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineScaleSetVMRunCommandResult> getVirtualMachineScaleSetVMRunCommand(
  GetVirtualMachineScaleSetVMRunCommandArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSetVMRunCommand',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineScaleSetVMRunCommandResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineScaleSetVMRunCommandResult> getVirtualMachineScaleSetVMRunCommandOutput(
  GetVirtualMachineScaleSetVMRunCommandArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:compute:getVirtualMachineScaleSetVMRunCommand',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineScaleSetVMRunCommandResult.fromMap);
}
