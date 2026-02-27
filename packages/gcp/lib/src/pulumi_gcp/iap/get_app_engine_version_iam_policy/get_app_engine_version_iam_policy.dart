import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_engine_version_iam_policy_args.dart';
import 'get_app_engine_version_iam_policy_result.dart';

/// Retrieves the current IAM policy data for appengineversion
Future<GetAppEngineVersionIamPolicyResult> getAppEngineVersionIamPolicy(
  GetAppEngineVersionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAppEngineVersionIamPolicy:getAppEngineVersionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppEngineVersionIamPolicyResult.fromMap(result);
}
