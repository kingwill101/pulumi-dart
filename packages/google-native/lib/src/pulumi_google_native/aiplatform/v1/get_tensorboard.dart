import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tensorboard_args.dart';
import 'get_tensorboard_result.dart';

/// Gets a Tensorboard.
Future<GetTensorboardResult> getTensorboard(
  GetTensorboardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTensorboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTensorboardResult.fromMap(result);
}
