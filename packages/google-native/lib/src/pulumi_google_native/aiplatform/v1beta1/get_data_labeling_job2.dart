import 'package:pulumi/pulumi.dart';
import 'get_data_labeling_job_args2.dart';
import 'get_data_labeling_job_result2.dart';

/// Gets a DataLabelingJob.
Future<GetDataLabelingJobResult2> getDataLabelingJob2(
  GetDataLabelingJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataLabelingJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataLabelingJobResult2.fromMap(result);
}
