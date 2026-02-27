import 'package:pulumi/pulumi.dart';
import 'get_encryption_by_default_args.dart';
import 'get_encryption_by_default_result.dart';

/// Provides a way to check whether default EBS encryption is enabled for your AWS account in the current AWS region.
Future<GetEncryptionByDefaultResult> getEncryptionByDefault(
  GetEncryptionByDefaultArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getEncryptionByDefault:getEncryptionByDefault',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEncryptionByDefaultResult.fromMap(result);
}
