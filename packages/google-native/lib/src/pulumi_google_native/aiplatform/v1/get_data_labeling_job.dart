import 'package:pulumi/pulumi.dart';
import 'get_data_labeling_job_args.dart';
import 'get_data_labeling_job_result.dart';

/// Gets a DataLabelingJob.
Future<GetDataLabelingJobResult> getDataLabelingJob(
  GetDataLabelingJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDataLabelingJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataLabelingJobResult.fromMap(result);
}
