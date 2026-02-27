import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_iam_policy_connectors_v1_args.dart';
import 'get_connection_iam_policy_connectors_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectionIamPolicyConnectorsV1Result>
    getConnectionIamPolicyConnectorsV1(
  GetConnectionIamPolicyConnectorsV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyConnectorsV1Result.fromMap(result);
}
