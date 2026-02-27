import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_script_args.dart';
import 'get_script_result.dart';

/// Use this data source to generate a Glue script from a Directed Acyclic Graph (DAG).
///
/// ## Example Usage
///
/// ### Generate Python Script
///
///
///
/// ### Generate Scala Code
Future<GetScriptResult> getScript(
  GetScriptArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getScript:getScript',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScriptResult.fromMap(result);
}
