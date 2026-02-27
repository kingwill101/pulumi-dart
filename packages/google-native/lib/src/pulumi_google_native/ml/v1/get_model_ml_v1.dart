import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_ml_v1_args.dart';
import 'get_model_ml_v1_result.dart';

/// Gets information about a model, including its name, the description (if set), and the default version (if at least one version of the model has been deployed).
Future<GetModelMlV1Result> getModelMlV1(
  GetModelMlV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelMlV1Result.fromMap(result);
}
