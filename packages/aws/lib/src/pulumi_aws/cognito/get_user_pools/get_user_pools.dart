import 'package:pulumi/pulumi.dart';
import 'get_user_pools_args.dart';
import 'get_user_pools_result.dart';

/// Use this data source to get a list of cognito user pools.
Future<GetUserPoolsResult> getUserPools(
  GetUserPoolsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPools:getUserPools',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserPoolsResult.fromMap(result);
}
