import 'package:pulumi/pulumi.dart';
import 'get_function_args.dart';
import 'get_function_result.dart';

/// Returns a function with the given name from the requested project.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v1:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}
