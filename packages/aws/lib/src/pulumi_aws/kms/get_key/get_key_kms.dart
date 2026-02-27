import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_kms_args.dart';
import 'get_key_kms_result.dart';

/// Use this data source to get detailed information about
/// the specified KMS Key with flexible key id input.
/// This can be useful to reference key alias
/// without having to hard code the ARN as input.
Future<GetKeyKmsResult> getKeyKms(
  GetKeyKmsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getKey:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyKmsResult.fromMap(result);
}
