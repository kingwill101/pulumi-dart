import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transfer_job_args.dart';
import 'get_transfer_job_result.dart';

/// Gets a transfer job.
Future<GetTransferJobResult> getTransferJob(
  GetTransferJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storagetransfer/v1:getTransferJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransferJobResult.fromMap(result);
}
