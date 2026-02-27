import 'package:pulumi/pulumi.dart' hide Config;
import 'get_model_args6.dart';
import 'get_model_result6.dart';

/// Gets a model.
Future<GetModelResult6> getModel6(
  GetModelArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getModel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelResult6.fromMap(result);
}
