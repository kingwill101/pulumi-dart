import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_cloudfunctions_v2_args.dart';
import 'get_function_cloudfunctions_v2_result.dart';

/// Returns a function with the given name from the requested project.
Future<GetFunctionCloudfunctionsV2Result> getFunctionCloudfunctionsV2(
  GetFunctionCloudfunctionsV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsV2Result.fromMap(result);
}
