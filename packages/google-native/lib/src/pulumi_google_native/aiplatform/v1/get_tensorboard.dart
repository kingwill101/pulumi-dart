import 'package:pulumi/pulumi.dart' hide Config;
import 'get_tensorboard_args.dart';
import 'get_tensorboard_result.dart';

/// Gets a Tensorboard.
Future<GetTensorboardResult> getTensorboard(
  GetTensorboardArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTensorboard',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTensorboardResult.fromMap(result);
}
