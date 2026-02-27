import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_cloudfunctions_v2alpha_args.dart';
import 'get_function_cloudfunctions_v2alpha_result.dart';

/// Returns a function with the given name from the requested project.
Future<GetFunctionCloudfunctionsV2alphaResult> getFunctionCloudfunctionsV2alpha(
  GetFunctionCloudfunctionsV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2alpha:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsV2alphaResult.fromMap(result);
}
