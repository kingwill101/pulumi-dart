import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policy_accesscontextmanager_v1beta_args.dart';
import 'get_access_policy_accesscontextmanager_v1beta_result.dart';

/// Get an AccessPolicy by name.
Future<GetAccessPolicyAccesscontextmanagerV1betaResult>
    getAccessPolicyAccesscontextmanagerV1beta(
  GetAccessPolicyAccesscontextmanagerV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1beta:getAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyAccesscontextmanagerV1betaResult.fromMap(result);
}
