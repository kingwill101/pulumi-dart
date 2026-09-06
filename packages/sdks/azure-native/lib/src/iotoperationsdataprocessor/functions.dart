import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_pipeline_args.dart';
import 'get_pipeline_result.dart';

/// Get a Dataset
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsdataprocessor_get_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsdataprocessor:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}

pulumi.Output<GetDatasetResult> getDatasetOutput(
  GetDatasetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperationsdataprocessor:getDataset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetResult.fromMap);
}

/// Get a Instance
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsdataprocessor_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsdataprocessor:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

pulumi.Output<GetInstanceResult> getInstanceOutput(
  GetInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperationsdataprocessor:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}

/// Get a Pipeline
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsdataprocessor_get_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineResult> getPipeline(
  GetPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsdataprocessor:getPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineResult.fromMap(result);
}

pulumi.Output<GetPipelineResult> getPipelineOutput(
  GetPipelineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:iotoperationsdataprocessor:getPipeline',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPipelineResult.fromMap);
}
