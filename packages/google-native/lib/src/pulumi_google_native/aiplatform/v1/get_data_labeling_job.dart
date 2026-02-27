import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_labeling_job_args.dart';
import 'get_data_labeling_job_result.dart';

/// Gets a DataLabelingJob.
Future<GetDataLabelingJobResult> getDataLabelingJob(
  GetDataLabelingJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDataLabelingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLabelingJobResult.fromMap(result);
}
