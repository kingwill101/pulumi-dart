import 'package:pulumi/pulumi.dart' hide Config;
import 'get_connection_iam_policy_args4.dart';
import 'get_connection_iam_policy_result4.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectionIamPolicyResult4> getConnectionIamPolicy4(
  GetConnectionIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult4.fromMap(result);
}
