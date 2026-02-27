import 'package:pulumi/pulumi.dart';
import 'get_provisioning_artifacts_args.dart';
import 'get_provisioning_artifacts_result.dart';

/// Lists the provisioning artifacts for the specified product.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetProvisioningArtifactsResult> getProvisioningArtifacts(
  GetProvisioningArtifactsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getProvisioningArtifacts:getProvisioningArtifacts',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProvisioningArtifactsResult.fromMap(result);
}
