import 'package:pulumi/pulumi.dart';
import 'get_function_args4.dart';
import 'get_function_result4.dart';

/// Returns a function with the given name from the requested project.
Future<GetFunctionResult4> getFunction4(
  GetFunctionArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult4.fromMap(result);
}
