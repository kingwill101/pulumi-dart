import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provider_iam_policy_args.dart';
import 'get_provider_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetProviderIamPolicyResult> getProviderIamPolicy(
  GetProviderIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getProviderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderIamPolicyResult.fromMap(result);
}
