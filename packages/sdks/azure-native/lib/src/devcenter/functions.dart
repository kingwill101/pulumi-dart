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

pulumi.Output<GetAttachedNetworkByDevCenterResult> getAttachedNetworkByDevCenterOutput(
  GetAttachedNetworkByDevCenterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getAttachedNetworkByDevCenter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttachedNetworkByDevCenterResult.fromMap);
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

pulumi.Output<GetCatalogResult> getCatalogOutput(
  GetCatalogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getCatalog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCatalogResult.fromMap);
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

pulumi.Output<GetCatalogDevBoxDefinitionErrorDetailsResult> getCatalogDevBoxDefinitionErrorDetailsOutput(
  GetCatalogDevBoxDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getCatalogDevBoxDefinitionErrorDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCatalogDevBoxDefinitionErrorDetailsResult.fromMap);
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

pulumi.Output<GetCatalogSyncErrorDetailsResult> getCatalogSyncErrorDetailsOutput(
  GetCatalogSyncErrorDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getCatalogSyncErrorDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCatalogSyncErrorDetailsResult.fromMap);
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

pulumi.Output<GetCurationProfileResult> getCurationProfileOutput(
  GetCurationProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getCurationProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCurationProfileResult.fromMap);
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

pulumi.Output<GetCustomizationTaskErrorDetailsResult> getCustomizationTaskErrorDetailsOutput(
  GetCustomizationTaskErrorDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getCustomizationTaskErrorDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomizationTaskErrorDetailsResult.fromMap);
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

pulumi.Output<GetDevBoxDefinitionResult> getDevBoxDefinitionOutput(
  GetDevBoxDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getDevBoxDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDevBoxDefinitionResult.fromMap);
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

pulumi.Output<GetDevCenterResult> getDevCenterOutput(
  GetDevCenterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getDevCenter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDevCenterResult.fromMap);
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

pulumi.Output<GetDevCenterCatalogImageDefinitionBuildDetailsResult> getDevCenterCatalogImageDefinitionBuildDetailsOutput(
  GetDevCenterCatalogImageDefinitionBuildDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getDevCenterCatalogImageDefinitionBuildDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDevCenterCatalogImageDefinitionBuildDetailsResult.fromMap);
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

pulumi.Output<GetDevCenterCatalogImageDefinitionErrorDetailsResult> getDevCenterCatalogImageDefinitionErrorDetailsOutput(
  GetDevCenterCatalogImageDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getDevCenterCatalogImageDefinitionErrorDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDevCenterCatalogImageDefinitionErrorDetailsResult.fromMap);
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

pulumi.Output<GetEncryptionSetResult> getEncryptionSetOutput(
  GetEncryptionSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getEncryptionSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEncryptionSetResult.fromMap);
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

pulumi.Output<GetEnvironmentDefinitionErrorDetailsResult> getEnvironmentDefinitionErrorDetailsOutput(
  GetEnvironmentDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getEnvironmentDefinitionErrorDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentDefinitionErrorDetailsResult.fromMap);
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

pulumi.Output<GetEnvironmentTypeResult> getEnvironmentTypeOutput(
  GetEnvironmentTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getEnvironmentType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentTypeResult.fromMap);
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

pulumi.Output<GetGalleryResult> getGalleryOutput(
  GetGalleryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getGallery',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryResult.fromMap);
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

pulumi.Output<GetNetworkConnectionResult> getNetworkConnectionOutput(
  GetNetworkConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getNetworkConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkConnectionResult.fromMap);
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

pulumi.Output<GetPlanResult> getPlanOutput(
  GetPlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getPlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPlanResult.fromMap);
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

pulumi.Output<GetPlanMemberResult> getPlanMemberOutput(
  GetPlanMemberArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getPlanMember',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPlanMemberResult.fromMap);
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

pulumi.Output<GetPoolResult> getPoolOutput(
  GetPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPoolResult.fromMap);
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

pulumi.Output<GetProjectResult> getProjectOutput(
  GetProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectResult.fromMap);
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

pulumi.Output<GetProjectCatalogResult> getProjectCatalogOutput(
  GetProjectCatalogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectCatalogResult.fromMap);
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

pulumi.Output<GetProjectCatalogEnvironmentDefinitionErrorDetailsResult> getProjectCatalogEnvironmentDefinitionErrorDetailsOutput(
  GetProjectCatalogEnvironmentDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalogEnvironmentDefinitionErrorDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectCatalogEnvironmentDefinitionErrorDetailsResult.fromMap);
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

pulumi.Output<GetProjectCatalogImageDefinitionBuildDetailsResult> getProjectCatalogImageDefinitionBuildDetailsOutput(
  GetProjectCatalogImageDefinitionBuildDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalogImageDefinitionBuildDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectCatalogImageDefinitionBuildDetailsResult.fromMap);
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

pulumi.Output<GetProjectCatalogImageDefinitionErrorDetailsResult> getProjectCatalogImageDefinitionErrorDetailsOutput(
  GetProjectCatalogImageDefinitionErrorDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalogImageDefinitionErrorDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectCatalogImageDefinitionErrorDetailsResult.fromMap);
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

pulumi.Output<GetProjectCatalogSyncErrorDetailsResult> getProjectCatalogSyncErrorDetailsOutput(
  GetProjectCatalogSyncErrorDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectCatalogSyncErrorDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectCatalogSyncErrorDetailsResult.fromMap);
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

pulumi.Output<GetProjectEnvironmentTypeResult> getProjectEnvironmentTypeOutput(
  GetProjectEnvironmentTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectEnvironmentType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectEnvironmentTypeResult.fromMap);
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

pulumi.Output<GetProjectInheritedSettingsResult> getProjectInheritedSettingsOutput(
  GetProjectInheritedSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectInheritedSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectInheritedSettingsResult.fromMap);
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

pulumi.Output<GetProjectPolicyResult> getProjectPolicyOutput(
  GetProjectPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getProjectPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectPolicyResult.fromMap);
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

pulumi.Output<GetScheduleResult> getScheduleOutput(
  GetScheduleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:getSchedule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduleResult.fromMap);
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

pulumi.Output<ListSkusByProjectResult> listSkusByProjectOutput(
  ListSkusByProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devcenter:listSkusByProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListSkusByProjectResult.fromMap);
}
