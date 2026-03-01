import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_args.dart';
import 'get_connector_result.dart';
import 'get_insight_args.dart';
import 'get_insight_result.dart';
import 'get_workload_impact_args.dart';
import 'get_workload_impact_result.dart';

/// Get a Connector
///
/// Uses Azure REST API version 2024-05-01-preview.
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

/// Get a WorkloadImpact
///
/// Uses Azure REST API version 2024-05-01-preview.
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
