import 'package:pulumi/pulumi.dart';
import 'get_models_args.dart';
import 'get_models_result.dart';

/// Data source for managing AWS Bedrock Foundation Models.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Filter by Inference Type
Future<GetModelsResult> getModels(
  GetModelsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrockfoundation/getModels:getModels',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelsResult.fromMap(result);
}
