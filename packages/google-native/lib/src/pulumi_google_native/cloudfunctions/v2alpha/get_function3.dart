import 'package:pulumi/pulumi.dart';
import 'get_function_args3.dart';
import 'get_function_result3.dart';

/// Returns a function with the given name from the requested project.
Future<GetFunctionResult3> getFunction3(
  GetFunctionArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2alpha:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult3.fromMap(result);
}
