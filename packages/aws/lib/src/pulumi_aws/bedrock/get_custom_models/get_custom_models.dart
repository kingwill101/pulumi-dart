import 'package:pulumi/pulumi.dart';
import 'get_custom_models_args.dart';
import 'get_custom_models_result.dart';

/// Returns a list of Amazon Bedrock custom models.
Future<GetCustomModelsResult> getCustomModels(
  GetCustomModelsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getCustomModels:getCustomModels',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomModelsResult.fromMap(result);
}
