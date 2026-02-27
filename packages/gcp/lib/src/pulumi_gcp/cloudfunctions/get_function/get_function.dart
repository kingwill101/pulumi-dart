import 'package:pulumi/pulumi.dart';
import 'get_function_args.dart';
import 'get_function_result.dart';

/// Get information about a Google Cloud Function. For more information see
/// the [official documentation](https://cloud.google.com/functions/docs/)
/// and [API](https://cloud.google.com/functions/docs/apis).
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctions/getFunction:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}
