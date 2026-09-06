import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_args.dart';
import 'get_job_result.dart';
import 'list_job_credentials_args.dart';
import 'list_job_credentials_result.dart';

/// Gets information about the specified job.
///
/// Uses Azure REST API version 2024-03-01-preview.
///
/// Other available API versions: 2022-12-01, 2023-03-01, 2023-12-01, 2024-02-01-preview, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databox [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databox_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databox:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

pulumi.Output<GetJobResult> getJobOutput(
  GetJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:databox:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// This method gets the unencrypted secrets related to the job.
///
/// Uses Azure REST API version 2024-03-01-preview.
///
/// Other available API versions: 2022-12-01, 2023-03-01, 2023-12-01, 2024-02-01-preview, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databox [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databox_list_job_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListJobCredentialsResult> listJobCredentials(
  ListJobCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databox:listJobCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListJobCredentialsResult.fromMap(result);
}

pulumi.Output<ListJobCredentialsResult> listJobCredentialsOutput(
  ListJobCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:databox:listJobCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListJobCredentialsResult.fromMap);
}
