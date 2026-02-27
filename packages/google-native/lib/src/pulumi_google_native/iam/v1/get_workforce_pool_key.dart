import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workforce_pool_key_args.dart';
import 'get_workforce_pool_key_result.dart';

/// Gets a WorkforcePoolProviderKey.
Future<GetWorkforcePoolKeyResult> getWorkforcePoolKey(
  GetWorkforcePoolKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePoolKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolKeyResult.fromMap(result);
}
