import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_args.dart';
import 'get_connector_result.dart';
import 'get_insight_args.dart';
import 'get_insight_result.dart';
import 'get_upload_service_upload_token_result.dart';
import 'get_workload_impact_args.dart';
import 'get_workload_impact_result.dart';

/// Get a Connector
///
/// Uses Azure REST API version 2024-05-01-preview.
///
/// Other available API versions: 2025-01-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native impact [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_impact_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:impact:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

/// Get Insight resources by workloadImpactName and insightName
///
/// Uses Azure REST API version 2024-05-01-preview.
///
/// Other available API versions: 2025-01-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native impact [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_impact_get_insight_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInsightResult> getInsight(
  GetInsightArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:impact:getInsight',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInsightResult.fromMap(result);
}

/// Only for select HPC customers at this time, who can use this POST endpoint to trigger an action, where the UserRP/AzImpactRP service creates and returns a user-delegate SAS token for the storage account/container unique to the customer (identified by subscription ID).
///
/// Uses Azure REST API version 2026-01-01-preview.
///
/// Other available API versions: 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native impact [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetUploadServiceUploadTokenResult> getUploadServiceUploadToken(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:impact:getUploadServiceUploadToken',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUploadServiceUploadTokenResult.fromMap(result);
}

/// Get a WorkloadImpact
///
/// Uses Azure REST API version 2024-05-01-preview.
///
/// Other available API versions: 2025-01-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native impact [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_impact_get_workload_impact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadImpactResult> getWorkloadImpact(
  GetWorkloadImpactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:impact:getWorkloadImpact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadImpactResult.fromMap(result);
}
