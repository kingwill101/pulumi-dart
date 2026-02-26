import 'package:pulumi/pulumi.dart';
import 'get_domain_iam_policy_args3.dart';
import 'get_domain_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDomainIamPolicyResult3> getDomainIamPolicy3(
  GetDomainIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getDomainIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainIamPolicyResult3.fromMap(result);
}
