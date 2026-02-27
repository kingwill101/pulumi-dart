import 'package:pulumi/pulumi.dart' hide Config;
import 'get_scope_iam_policy_args3.dart';
import 'get_scope_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetScopeIamPolicyResult3> getScopeIamPolicy3(
  GetScopeIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getScopeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyResult3.fromMap(result);
}
