import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_alloydb_v1alpha_args.dart';
import 'get_user_alloydb_v1alpha_result.dart';

/// Gets details of a single User.
Future<GetUserAlloydbV1alphaResult> getUserAlloydbV1alpha(
  GetUserAlloydbV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserAlloydbV1alphaResult.fromMap(result);
}
