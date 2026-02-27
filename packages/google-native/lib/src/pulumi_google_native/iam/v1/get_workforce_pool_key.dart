import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workforce_pool_key_args.dart';
import 'get_workforce_pool_key_result.dart';

/// Gets a WorkforcePoolProviderKey.
Future<GetWorkforcePoolKeyResult> getWorkforcePoolKey(
  GetWorkforcePoolKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolKeyResult.fromMap(result);
}
