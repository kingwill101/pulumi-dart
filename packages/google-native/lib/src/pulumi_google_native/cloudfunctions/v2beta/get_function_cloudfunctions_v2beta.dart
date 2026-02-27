import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_cloudfunctions_v2beta_args.dart';
import 'get_function_cloudfunctions_v2beta_result.dart';

/// Returns a function with the given name from the requested project.
Future<GetFunctionCloudfunctionsV2betaResult> getFunctionCloudfunctionsV2beta(
  GetFunctionCloudfunctionsV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsV2betaResult.fromMap(result);
}
