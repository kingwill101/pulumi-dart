import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_translate_v3_args.dart';
import 'get_model_translate_v3_result.dart';

/// Gets a model.
Future<GetModelTranslateV3Result> getModelTranslateV3(
  GetModelTranslateV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelTranslateV3Result.fromMap(result);
}
