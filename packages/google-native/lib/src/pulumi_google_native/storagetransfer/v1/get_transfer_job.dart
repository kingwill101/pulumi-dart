import 'package:pulumi/pulumi.dart' hide Config;
import 'get_transfer_job_args.dart';
import 'get_transfer_job_result.dart';

/// Gets a transfer job.
Future<GetTransferJobResult> getTransferJob(
  GetTransferJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storagetransfer/v1:getTransferJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTransferJobResult.fromMap(result);
}
