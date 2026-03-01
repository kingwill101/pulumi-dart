import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_set_args.dart';
import 'get_availability_set_result.dart';
import 'get_capacity_reservation_args.dart';
import 'get_capacity_reservation_group_args.dart';
import 'get_capacity_reservation_group_result.dart';
import 'get_capacity_reservation_result.dart';
import 'get_cloud_service_args.dart';
import 'get_cloud_service_result.dart';
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
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// The operation that retrieves information about the capacity reservation.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// The operation that retrieves information about a capacity reservation group.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Display information about a cloud service.
///
/// Uses Azure REST API version 2022-09-04.
///
/// Other available API versions: 2022-04-04, 2024-11-04. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_cloud_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudServiceResult> getCloudService(
  GetCloudServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:compute:getCloudService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudServiceResult.fromMap(result);
}

/// Retrieves information about a dedicated host.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a dedicated host group.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Gets information about a disk.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Gets information about a disk access resource.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Gets information about a private endpoint connection under a disk access resource.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Gets information about a disk encryption set.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a Shared Image Gallery.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a gallery Application Definition.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a gallery Application Version.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a gallery image definition.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a gallery image version.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a gallery inVMAccessControlProfile.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a gallery inVMAccessControlProfile version.
///
/// Uses Azure REST API version 2024-03-03.
///
/// Other available API versions: 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a gallery script definition.
///
/// Uses Azure REST API version 2025-03-03.
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

/// Custom ArmResourceRead operation template with CloudError as Error
///
/// Uses Azure REST API version 2025-03-03.
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

/// Gets an image.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Export logs that show Api requests made by this subscription in the given time window to show throttling activities.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Export logs that show total throttled Api requests for this subscription in the given time window.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about a proximity placement group .
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// The operation to get the restore point.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// The operation to get the restore point collection.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Gets information about a snapshot.
///
/// Uses Azure REST API version 2024-03-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about an SSH public key.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Retrieves information about the model view or the instance view of a virtual machine.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// The operation to get the extension.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// The operation to get the run command.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Display information about a virtual machine scale set.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// The operation to get the extension.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Gets a virtual machine from a VM scale set.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// The operation to get the VMSS VM extension.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// The operation to get the VMSS VM run command.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
