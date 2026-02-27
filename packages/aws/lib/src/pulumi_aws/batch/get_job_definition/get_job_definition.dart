import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_args.dart';
import 'get_job_definition_result.dart';

/// Data source for managing an AWS Batch Job Definition.
///
/// ## Example Usage
///
/// ### Lookup via Arn
///
///
///
/// ### Lookup via Name
Future<GetJobDefinitionResult> getJobDefinition(
  GetJobDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:batch/getJobDefinition:getJobDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobDefinitionResult.fromMap(result);
}
