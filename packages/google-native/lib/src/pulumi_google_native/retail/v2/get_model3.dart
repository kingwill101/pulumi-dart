import 'package:pulumi/pulumi.dart' hide Config;
import 'get_model_args3.dart';
import 'get_model_result3.dart';

/// Gets a model.
Future<GetModelResult3> getModel3(
  GetModelArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2:getModel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelResult3.fromMap(result);
}
