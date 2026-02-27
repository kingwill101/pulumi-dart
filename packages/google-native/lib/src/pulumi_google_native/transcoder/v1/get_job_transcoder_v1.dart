import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_transcoder_v1_args.dart';
import 'get_job_transcoder_v1_result.dart';

/// Returns the job data.
Future<GetJobTranscoderV1Result> getJobTranscoderV1(
  GetJobTranscoderV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:transcoder/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobTranscoderV1Result.fromMap(result);
}
