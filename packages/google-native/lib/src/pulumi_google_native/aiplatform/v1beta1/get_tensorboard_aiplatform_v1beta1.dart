import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tensorboard_aiplatform_v1beta1_args.dart';
import 'get_tensorboard_aiplatform_v1beta1_result.dart';

/// Gets a Tensorboard.
Future<GetTensorboardAiplatformV1beta1Result> getTensorboardAiplatformV1beta1(
  GetTensorboardAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTensorboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTensorboardAiplatformV1beta1Result.fromMap(result);
}
