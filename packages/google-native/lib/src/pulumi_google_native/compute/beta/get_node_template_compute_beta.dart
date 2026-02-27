import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_template_compute_beta_args.dart';
import 'get_node_template_compute_beta_result.dart';

/// Returns the specified node template.
Future<GetNodeTemplateComputeBetaResult> getNodeTemplateComputeBeta(
  GetNodeTemplateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateComputeBetaResult.fromMap(result);
}
