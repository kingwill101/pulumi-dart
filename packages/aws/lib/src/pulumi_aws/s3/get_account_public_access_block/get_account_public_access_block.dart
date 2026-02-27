import 'package:pulumi/pulumi.dart';
import 'get_account_public_access_block_args.dart';
import 'get_account_public_access_block_result.dart';

/// The S3 account public access block data source returns account-level public access block configuration.
Future<GetAccountPublicAccessBlockResult> getAccountPublicAccessBlock(
  GetAccountPublicAccessBlockArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getAccountPublicAccessBlock:getAccountPublicAccessBlock',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountPublicAccessBlockResult.fromMap(result);
}
