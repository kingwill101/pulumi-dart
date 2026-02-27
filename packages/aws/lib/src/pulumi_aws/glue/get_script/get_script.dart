import 'package:pulumi/pulumi.dart';
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
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getScript:getScript',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScriptResult.fromMap(result);
}
