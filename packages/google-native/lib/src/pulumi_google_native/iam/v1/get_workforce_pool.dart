import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workforce_pool_args.dart';
import 'get_workforce_pool_result.dart';

/// Gets an individual WorkforcePool.
Future<GetWorkforcePoolResult> getWorkforcePool(
  GetWorkforcePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkforcePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolResult.fromMap(result);
}
