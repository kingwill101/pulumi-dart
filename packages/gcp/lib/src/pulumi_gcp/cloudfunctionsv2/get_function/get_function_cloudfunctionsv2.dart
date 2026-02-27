import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_cloudfunctionsv2_args.dart';
import 'get_function_cloudfunctionsv2_result.dart';

/// Get information about a Google Cloud Function (2nd gen). For more information see:
///
/// * [API documentation](https://cloud.google.com/functions/docs/reference/rest/v2beta/projects.locations.functions).
Future<GetFunctionCloudfunctionsv2Result> getFunctionCloudfunctionsv2(
  GetFunctionCloudfunctionsv2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctionsv2/getFunction:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsv2Result.fromMap(result);
}
