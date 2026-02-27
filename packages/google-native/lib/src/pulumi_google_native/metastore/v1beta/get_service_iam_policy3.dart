import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_iam_policy_args3.dart';
import 'get_service_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceIamPolicyResult3> getServiceIamPolicy3(
  GetServiceIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult3.fromMap(result);
}
