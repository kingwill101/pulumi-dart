import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_retail_v2_args.dart';
import 'get_model_retail_v2_result.dart';

/// Gets a model.
Future<GetModelRetailV2Result> getModelRetailV2(
  GetModelRetailV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelRetailV2Result.fromMap(result);
}
