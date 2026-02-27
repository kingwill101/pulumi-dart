import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_type_provider_deploymentmanager_v2beta_args.dart';
import 'get_type_provider_deploymentmanager_v2beta_result.dart';

/// Gets information about a specific type provider.
Future<GetTypeProviderDeploymentmanagerV2betaResult>
    getTypeProviderDeploymentmanagerV2beta(
  GetTypeProviderDeploymentmanagerV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getTypeProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTypeProviderDeploymentmanagerV2betaResult.fromMap(result);
}
