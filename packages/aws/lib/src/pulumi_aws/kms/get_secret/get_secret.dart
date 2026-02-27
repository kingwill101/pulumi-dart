import 'package:pulumi/pulumi.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';

/// !> **WARNING:** This data source's functionality was removed in version 2.0.0 of the AWS Provider. You can migrate existing configurations to the `aws.kms.getSecrets` data source following instructions available in the Version 2 Upgrade Guide. This data source will be removed in a future version.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getSecret:getSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}
