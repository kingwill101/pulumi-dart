import 'package:pulumi/pulumi.dart' hide Config;
import 'get_function_args2.dart';
import 'get_function_result2.dart';

/// Returns a function with the given name from the requested project.
Future<GetFunctionResult2> getFunction2(
  GetFunctionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult2.fromMap(result);
}
