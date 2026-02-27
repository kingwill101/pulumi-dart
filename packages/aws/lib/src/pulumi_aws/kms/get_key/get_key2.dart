import 'package:pulumi/pulumi.dart';
import 'get_key_args2.dart';
import 'get_key_result2.dart';

/// Use this data source to get detailed information about
/// the specified KMS Key with flexible key id input.
/// This can be useful to reference key alias
/// without having to hard code the ARN as input.
Future<GetKeyResult2> getKey2(
  GetKeyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getKey:getKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyResult2.fromMap(result);
}
