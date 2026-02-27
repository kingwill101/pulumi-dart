import 'package:pulumi/pulumi.dart';
import 'get_access_keys_args.dart';
import 'get_access_keys_result.dart';

/// This data source can be used to fetch information about IAM access keys of a
/// specific IAM user.
Future<GetAccessKeysResult> getAccessKeys(
  GetAccessKeysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getAccessKeys:getAccessKeys',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessKeysResult.fromMap(result);
}
