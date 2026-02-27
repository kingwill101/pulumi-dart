import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_iam_policy_bigqueryconnection_v1beta1_args.dart';
import 'get_connection_iam_policy_bigqueryconnection_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectionIamPolicyBigqueryconnectionV1beta1Result>
    getConnectionIamPolicyBigqueryconnectionV1beta1(
  GetConnectionIamPolicyBigqueryconnectionV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryconnection/v1beta1:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyBigqueryconnectionV1beta1Result.fromMap(result);
}
