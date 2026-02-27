import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_level_accesscontextmanager_v1beta_args.dart';
import 'get_access_level_accesscontextmanager_v1beta_result.dart';

/// Get an Access Level by resource name.
Future<GetAccessLevelAccesscontextmanagerV1betaResult>
    getAccessLevelAccesscontextmanagerV1beta(
  GetAccessLevelAccesscontextmanagerV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1beta:getAccessLevel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessLevelAccesscontextmanagerV1betaResult.fromMap(result);
}
