import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_composite_type_deploymentmanager_v2beta_args.dart';
import 'get_composite_type_deploymentmanager_v2beta_result.dart';

/// Gets information about a specific composite type.
Future<GetCompositeTypeDeploymentmanagerV2betaResult>
    getCompositeTypeDeploymentmanagerV2beta(
  GetCompositeTypeDeploymentmanagerV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getCompositeType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompositeTypeDeploymentmanagerV2betaResult.fromMap(result);
}
