import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_keys_args.dart';
import 'get_access_keys_result.dart';

/// This data source can be used to fetch information about IAM access keys of a
/// specific IAM user.
Future<GetAccessKeysResult> getAccessKeys(
  GetAccessKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getAccessKeys:getAccessKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessKeysResult.fromMap(result);
}
