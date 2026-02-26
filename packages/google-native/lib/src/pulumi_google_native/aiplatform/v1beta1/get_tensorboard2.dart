import 'package:pulumi/pulumi.dart';
import 'get_tensorboard_args2.dart';
import 'get_tensorboard_result2.dart';

/// Gets a Tensorboard.
Future<GetTensorboardResult2> getTensorboard2(
  GetTensorboardArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTensorboard',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTensorboardResult2.fromMap(result);
}
