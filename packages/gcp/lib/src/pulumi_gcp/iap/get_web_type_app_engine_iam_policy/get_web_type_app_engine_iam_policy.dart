import 'package:pulumi/pulumi.dart';
import 'get_web_type_app_engine_iam_policy_args.dart';
import 'get_web_type_app_engine_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webtypeappengine
Future<GetWebTypeAppEngineIamPolicyResult> getWebTypeAppEngineIamPolicy(
  GetWebTypeAppEngineIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebTypeAppEngineIamPolicy:getWebTypeAppEngineIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebTypeAppEngineIamPolicyResult.fromMap(result);
}
