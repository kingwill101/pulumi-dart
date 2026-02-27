import 'package:pulumi/pulumi.dart';
import 'get_custom_model_args.dart';
import 'get_custom_model_result.dart';

/// Returns properties of a specific Amazon Bedrock custom model.
Future<GetCustomModelResult> getCustomModel(
  GetCustomModelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getCustomModel:getCustomModel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomModelResult.fromMap(result);
}
