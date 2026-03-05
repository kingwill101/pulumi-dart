import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attached_network_by_dev_center_args.dart';
import 'get_attached_network_by_dev_center_result.dart';
import 'get_catalog_args.dart';
import 'get_catalog_dev_box_definition_error_details_args.dart';
import 'get_catalog_dev_box_definition_error_details_result.dart';
import 'get_catalog_result.dart';
import 'get_catalog_sync_error_details_args.dart';
import 'get_catalog_sync_error_details_result.dart';
import 'get_curation_profile_args.dart';
import 'get_curation_profile_result.dart';
import 'get_customization_task_error_details_args.dart';
import 'get_customization_task_error_details_result.dart';
import 'get_dev_box_definition_args.dart';
import 'get_dev_box_definition_result.dart';
import 'get_dev_center_args.dart';
import 'get_dev_center_catalog_image_definition_build_details_args.dart';
import 'get_dev_center_catalog_image_definition_build_details_result.dart';
import 'get_dev_center_catalog_image_definition_error_details_args.dart';
import 'get_dev_center_catalog_image_definition_error_details_result.dart';
import 'get_dev_center_result.dart';
import 'get_encryption_set_args.dart';
import 'get_encryption_set_result.dart';
import 'get_environment_definition_error_details_args.dart';
import 'get_environment_definition_error_details_result.dart';
import 'get_environment_type_args.dart';
import 'get_environment_type_result.dart';
import 'get_gallery_args.dart';
import 'get_gallery_result.dart';
import 'get_network_connection_args.dart';
import 'get_network_connection_result.dart';
import 'get_plan_args.dart';
import 'get_plan_member_args.dart';
import 'get_plan_member_result.dart';
import 'get_plan_result.dart';
import 'get_pool_args.dart';
import 'get_pool_result.dart';
import 'get_project_args.dart';
import 'get_project_catalog_args.dart';
import 'get_project_catalog_environment_definition_error_details_args.dart';
import 'get_project_catalog_environment_definition_error_details_result.dart';
import 'get_project_catalog_image_definition_build_details_args.dart';
import 'get_project_catalog_image_definition_build_details_result.dart';
import 'get_project_catalog_image_definition_error_details_args.dart';
import 'get_project_catalog_image_definition_error_details_result.dart';
import 'get_project_catalog_result.dart';
import 'get_project_catalog_sync_error_details_args.dart';
import 'get_project_catalog_sync_error_details_result.dart';
import 'get_project_environment_type_args.dart';
import 'get_project_environment_type_result.dart';
import 'get_project_inherited_settings_args.dart';
import 'get_project_inherited_settings_result.dart';
import 'get_project_policy_args.dart';
import 'get_project_policy_result.dart';
import 'get_project_result.dart';
import 'get_schedule_args.dart';
import 'get_schedule_result.dart';
import 'list_skus_by_project_args.dart';
import 'list_skus_by_project_result.dart';

/// Gets an attached NetworkConnection.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_attached_network_by_dev_center_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttachedNetworkByDevCenterResult> getAttachedNetworkByDevCenter(
  GetAttachedNetworkByDevCenterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getAttachedNetworkByDevCenter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachedNetworkByDevCenterResult.fromMap(result);
}

/// Gets a catalog
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_catalog_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCatalogResult> getCatalog(
  GetCatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getCatalog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCatalogResult.fromMap(result);
}

/// Gets Catalog Devbox Definition error details
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_catalog_dev_box_definition_error_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCatalogDevBoxDefinitionErrorDetailsResult> getCatalogDevBoxDefinitionErrorDetails(
  GetCatalogDevBoxDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getCatalogDevBoxDefinitionErrorDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCatalogDevBoxDefinitionErrorDetailsResult.fromMap(result);
}

/// Gets catalog synchronization error details
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_catalog_sync_error_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCatalogSyncErrorDetailsResult> getCatalogSyncErrorDetails(
  GetCatalogSyncErrorDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getCatalogSyncErrorDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCatalogSyncErrorDetailsResult.fromMap(result);
}

/// Gets a specific curation profile.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2024-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_curation_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCurationProfileResult> getCurationProfile(
  GetCurationProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getCurationProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCurationProfileResult.fromMap(result);
}

/// Gets Customization Task error details
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_customization_task_error_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomizationTaskErrorDetailsResult> getCustomizationTaskErrorDetails(
  GetCustomizationTaskErrorDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getCustomizationTaskErrorDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomizationTaskErrorDetailsResult.fromMap(result);
}

/// Gets a Dev Box definition
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_dev_box_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevBoxDefinitionResult> getDevBoxDefinition(
  GetDevBoxDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getDevBoxDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevBoxDefinitionResult.fromMap(result);
}

/// Gets a devcenter.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_dev_center_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevCenterResult> getDevCenter(
  GetDevCenterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getDevCenter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevCenterResult.fromMap(result);
}

/// Gets Build details
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_dev_center_catalog_image_definition_build_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevCenterCatalogImageDefinitionBuildDetailsResult> getDevCenterCatalogImageDefinitionBuildDetails(
  GetDevCenterCatalogImageDefinitionBuildDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getDevCenterCatalogImageDefinitionBuildDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevCenterCatalogImageDefinitionBuildDetailsResult.fromMap(result);
}

/// Gets Image Definition error details
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_dev_center_catalog_image_definition_error_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevCenterCatalogImageDefinitionErrorDetailsResult> getDevCenterCatalogImageDefinitionErrorDetails(
  GetDevCenterCatalogImageDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getDevCenterCatalogImageDefinitionErrorDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevCenterCatalogImageDefinitionErrorDetailsResult.fromMap(result);
}

/// Gets a devcenter encryption set.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_encryption_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEncryptionSetResult> getEncryptionSet(
  GetEncryptionSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getEncryptionSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEncryptionSetResult.fromMap(result);
}

/// Gets Environment Definition error details
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_environment_definition_error_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentDefinitionErrorDetailsResult> getEnvironmentDefinitionErrorDetails(
  GetEnvironmentDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getEnvironmentDefinitionErrorDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentDefinitionErrorDetailsResult.fromMap(result);
}

/// Gets an environment type.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_environment_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentTypeResult> getEnvironmentType(
  GetEnvironmentTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getEnvironmentType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentTypeResult.fromMap(result);
}

/// Gets a gallery
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_gallery_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryResult> getGallery(
  GetGalleryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getGallery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryResult.fromMap(result);
}

/// Gets a network connection resource
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_network_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkConnectionResult> getNetworkConnection(
  GetNetworkConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getNetworkConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkConnectionResult.fromMap(result);
}

/// Gets a devcenter plan.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlanResult> getPlan(
  GetPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlanResult.fromMap(result);
}

/// Gets a devcenter plan member.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_plan_member_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlanMemberResult> getPlanMember(
  GetPlanMemberArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getPlanMember',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlanMemberResult.fromMap(result);
}

/// Gets a machine pool
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoolResult> getPool(
  GetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoolResult.fromMap(result);
}

/// Gets a specific project.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

/// Gets an associated project catalog.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_catalog_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectCatalogResult> getProjectCatalog(
  GetProjectCatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCatalogResult.fromMap(result);
}

/// Gets Environment Definition error details
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_catalog_environment_definition_error_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectCatalogEnvironmentDefinitionErrorDetailsResult> getProjectCatalogEnvironmentDefinitionErrorDetails(
  GetProjectCatalogEnvironmentDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalogEnvironmentDefinitionErrorDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCatalogEnvironmentDefinitionErrorDetailsResult.fromMap(result);
}

/// Gets Build details
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_catalog_image_definition_build_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectCatalogImageDefinitionBuildDetailsResult> getProjectCatalogImageDefinitionBuildDetails(
  GetProjectCatalogImageDefinitionBuildDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalogImageDefinitionBuildDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCatalogImageDefinitionBuildDetailsResult.fromMap(result);
}

/// Gets Image Definition error details
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_catalog_image_definition_error_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectCatalogImageDefinitionErrorDetailsResult> getProjectCatalogImageDefinitionErrorDetails(
  GetProjectCatalogImageDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalogImageDefinitionErrorDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCatalogImageDefinitionErrorDetailsResult.fromMap(result);
}

/// Gets project catalog synchronization error details
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_catalog_sync_error_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectCatalogSyncErrorDetailsResult> getProjectCatalogSyncErrorDetails(
  GetProjectCatalogSyncErrorDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalogSyncErrorDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCatalogSyncErrorDetailsResult.fromMap(result);
}

/// Gets a project environment type.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_environment_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectEnvironmentTypeResult> getProjectEnvironmentType(
  GetProjectEnvironmentTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectEnvironmentType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectEnvironmentTypeResult.fromMap(result);
}

/// Gets applicable inherited settings for this project.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_inherited_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectInheritedSettingsResult> getProjectInheritedSettings(
  GetProjectInheritedSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectInheritedSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectInheritedSettingsResult.fromMap(result);
}

/// Gets a specific project policy.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectPolicyResult> getProjectPolicy(
  GetProjectPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectPolicyResult.fromMap(result);
}

/// Gets a schedule resource.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleResult> getSchedule(
  GetScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult.fromMap(result);
}

/// Lists SKUs available to the project
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_list_skus_by_project_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSkusByProjectResult> listSkusByProject(
  ListSkusByProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devcenter:listSkusByProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSkusByProjectResult.fromMap(result);
}
