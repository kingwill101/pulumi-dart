import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_signing_job_args.dart';
import 'get_signing_job_result.dart';

/// Provides information about a Signer Signing Job.
Future<GetSigningJobResult> getSigningJob(
  GetSigningJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:signer/getSigningJob:getSigningJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSigningJobResult.fromMap(result);
}
