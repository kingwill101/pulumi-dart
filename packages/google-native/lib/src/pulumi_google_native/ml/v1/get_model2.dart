import 'package:pulumi/pulumi.dart';
import 'get_model_args2.dart';
import 'get_model_result2.dart';

/// Gets information about a model, including its name, the description (if set), and the default version (if at least one version of the model has been deployed).
Future<GetModelResult2> getModel2(
  GetModelArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getModel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelResult2.fromMap(result);
}
