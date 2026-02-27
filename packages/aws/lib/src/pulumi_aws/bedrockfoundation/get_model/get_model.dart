import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_args.dart';
import 'get_model_result.dart';

/// Data source for managing an AWS Bedrock Foundation Model.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetModelResult> getModel(
  GetModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrockfoundation/getModel:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelResult.fromMap(result);
}
