import 'package:pulumi/pulumi.dart';
import 'get_function_iam_policy_args4.dart';
import 'get_function_iam_policy_result4.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFunctionIamPolicyResult4> getFunctionIamPolicy4(
  GetFunctionIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunctionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult4.fromMap(result);
}
