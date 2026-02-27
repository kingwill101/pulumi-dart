import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_engine_service_iam_policy_args.dart';
import 'get_app_engine_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for appengineservice
Future<GetAppEngineServiceIamPolicyResult> getAppEngineServiceIamPolicy(
  GetAppEngineServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAppEngineServiceIamPolicy:getAppEngineServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppEngineServiceIamPolicyResult.fromMap(result);
}
