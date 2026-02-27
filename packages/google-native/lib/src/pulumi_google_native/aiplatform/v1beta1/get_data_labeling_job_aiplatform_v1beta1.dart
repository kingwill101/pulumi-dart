import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_labeling_job_aiplatform_v1beta1_args.dart';
import 'get_data_labeling_job_aiplatform_v1beta1_result.dart';

/// Gets a DataLabelingJob.
Future<GetDataLabelingJobAiplatformV1beta1Result>
    getDataLabelingJobAiplatformV1beta1(
  GetDataLabelingJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataLabelingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLabelingJobAiplatformV1beta1Result.fromMap(result);
}
