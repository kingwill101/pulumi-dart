import 'package:pulumi/pulumi.dart' hide Config;
import 'get_model_args.dart';
import 'get_model_result.dart';

/// Gets a model resource.
Future<GetModelResult> getModel(
  GetModelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseml/v1beta2:getModel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelResult.fromMap(result);
}
