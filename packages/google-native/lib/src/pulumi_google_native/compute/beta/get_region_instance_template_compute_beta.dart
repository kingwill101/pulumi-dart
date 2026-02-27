import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_template_compute_beta_args.dart';
import 'get_region_instance_template_compute_beta_result.dart';

/// Returns the specified instance template.
Future<GetRegionInstanceTemplateComputeBetaResult>
    getRegionInstanceTemplateComputeBeta(
  GetRegionInstanceTemplateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateComputeBetaResult.fromMap(result);
}
