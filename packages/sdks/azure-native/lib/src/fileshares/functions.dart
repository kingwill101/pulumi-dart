import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_file_share_args.dart';
import 'get_file_share_limits_args.dart';
import 'get_file_share_limits_result.dart';
import 'get_file_share_provisioning_recommendation_args.dart';
import 'get_file_share_provisioning_recommendation_result.dart';
import 'get_file_share_result.dart';
import 'get_file_share_snapshot_args.dart';
import 'get_file_share_snapshot_result.dart';
import 'get_file_share_usage_data_args.dart';
import 'get_file_share_usage_data_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';

/// Get a FileShare
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// Other available API versions: 2025-09-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fileshares [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_fileshares_get_file_share_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileShareResult> getFileShare(
  GetFileShareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fileshares:getFileShare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileShareResult.fromMap(result);
}

/// Get file shares limits.
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// Other available API versions: 2025-09-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fileshares [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_fileshares_get_file_share_limits_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileShareLimitsResult> getFileShareLimits(
  GetFileShareLimitsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fileshares:getFileShareLimits',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileShareLimitsResult.fromMap(result);
}

/// Get file shares provisioning parameters recommendation.
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// Other available API versions: 2025-09-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fileshares [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_fileshares_get_file_share_provisioning_recommendation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileShareProvisioningRecommendationResult> getFileShareProvisioningRecommendation(
  GetFileShareProvisioningRecommendationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fileshares:getFileShareProvisioningRecommendation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileShareProvisioningRecommendationResult.fromMap(result);
}

/// Get a FileShareSnapshot
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// Other available API versions: 2025-09-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fileshares [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_fileshares_get_file_share_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileShareSnapshotResult> getFileShareSnapshot(
  GetFileShareSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fileshares:getFileShareSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileShareSnapshotResult.fromMap(result);
}

/// Get file shares usage data.
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// Other available API versions: 2025-09-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fileshares [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_fileshares_get_file_share_usage_data_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileShareUsageDataResult> getFileShareUsageData(
  GetFileShareUsageDataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fileshares:getFileShareUsageData',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileShareUsageDataResult.fromMap(result);
}

/// Gets the specified private endpoint connection associated with the file share.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fileshares [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_fileshares_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fileshares:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}
