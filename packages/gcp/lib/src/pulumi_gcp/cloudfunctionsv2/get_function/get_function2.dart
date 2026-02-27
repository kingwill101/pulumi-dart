import 'package:pulumi/pulumi.dart';
import 'get_function_args2.dart';
import 'get_function_result2.dart';

/// Get information about a Google Cloud Function (2nd gen). For more information see:
///
/// * [API documentation](https://cloud.google.com/functions/docs/reference/rest/v2beta/projects.locations.functions).
Future<GetFunctionResult2> getFunction2(
  GetFunctionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctionsv2/getFunction:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult2.fromMap(result);
}
