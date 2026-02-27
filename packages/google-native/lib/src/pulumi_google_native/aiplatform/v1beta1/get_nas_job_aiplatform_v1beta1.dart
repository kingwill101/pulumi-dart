import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nas_job_aiplatform_v1beta1_args.dart';
import 'get_nas_job_aiplatform_v1beta1_result.dart';

/// Gets a NasJob
Future<GetNasJobAiplatformV1beta1Result> getNasJobAiplatformV1beta1(
  GetNasJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNasJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNasJobAiplatformV1beta1Result.fromMap(result);
}
