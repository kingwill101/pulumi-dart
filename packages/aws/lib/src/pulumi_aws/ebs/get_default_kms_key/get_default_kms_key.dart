import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_kms_key_args.dart';
import 'get_default_kms_key_result.dart';

/// Use this data source to get the default EBS encryption KMS key in the current region.
Future<GetDefaultKmsKeyResult> getDefaultKmsKey(
  GetDefaultKmsKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getDefaultKmsKey:getDefaultKmsKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultKmsKeyResult.fromMap(result);
}
