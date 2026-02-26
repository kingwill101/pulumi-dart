import 'package:pulumi/pulumi.dart';
import 'get_model_args5.dart';
import 'get_model_result5.dart';

/// Gets a model.
Future<GetModelResult5> getModel5(
  GetModelArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getModel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelResult5.fromMap(result);
}
