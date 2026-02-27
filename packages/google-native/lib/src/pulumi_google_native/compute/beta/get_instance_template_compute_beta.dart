import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_template_compute_beta_args.dart';
import 'get_instance_template_compute_beta_result.dart';

/// Returns the specified instance template.
Future<GetInstanceTemplateComputeBetaResult> getInstanceTemplateComputeBeta(
  GetInstanceTemplateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateComputeBetaResult.fromMap(result);
}
