import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provisioning_artifacts_args.dart';
import 'get_provisioning_artifacts_result.dart';

/// Lists the provisioning artifacts for the specified product.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetProvisioningArtifactsResult> getProvisioningArtifacts(
  GetProvisioningArtifactsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getProvisioningArtifacts:getProvisioningArtifacts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProvisioningArtifactsResult.fromMap(result);
}
