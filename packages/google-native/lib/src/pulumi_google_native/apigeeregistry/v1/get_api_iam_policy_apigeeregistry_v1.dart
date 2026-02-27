import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_iam_policy_apigeeregistry_v1_args.dart';
import 'get_api_iam_policy_apigeeregistry_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetApiIamPolicyApigeeregistryV1Result> getApiIamPolicyApigeeregistryV1(
  GetApiIamPolicyApigeeregistryV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyApigeeregistryV1Result.fromMap(result);
}
