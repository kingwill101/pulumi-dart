import 'package:pulumi/pulumi.dart' hide Config;
import 'get_model_args4.dart';
import 'get_model_result4.dart';

/// Gets a model.
Future<GetModelResult4> getModel4(
  GetModelArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getModel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelResult4.fromMap(result);
}
