import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_alloydb_v1beta_args.dart';
import 'get_user_alloydb_v1beta_result.dart';

/// Gets details of a single User.
Future<GetUserAlloydbV1betaResult> getUserAlloydbV1beta(
  GetUserAlloydbV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserAlloydbV1betaResult.fromMap(result);
}
