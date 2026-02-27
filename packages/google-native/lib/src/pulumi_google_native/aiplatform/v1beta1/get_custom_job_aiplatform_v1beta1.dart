import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_job_aiplatform_v1beta1_args.dart';
import 'get_custom_job_aiplatform_v1beta1_result.dart';

/// Gets a CustomJob.
Future<GetCustomJobAiplatformV1beta1Result> getCustomJobAiplatformV1beta1(
  GetCustomJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getCustomJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomJobAiplatformV1beta1Result.fromMap(result);
}
