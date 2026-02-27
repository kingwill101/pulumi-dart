import 'package:pulumi/pulumi.dart';
import 'get_public_key_args.dart';
import 'get_public_key_result.dart';

/// Use this data source to get the public key about the specified KMS Key with flexible key id input. This can be useful to reference key alias without having to hard code the ARN as input.
Future<GetPublicKeyResult> getPublicKey(
  GetPublicKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getPublicKey:getPublicKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPublicKeyResult.fromMap(result);
}
