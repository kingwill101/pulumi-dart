import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_template_compute_v1_args.dart';
import 'get_node_template_compute_v1_result.dart';

/// Returns the specified node template.
Future<GetNodeTemplateComputeV1Result> getNodeTemplateComputeV1(
  GetNodeTemplateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNodeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateComputeV1Result.fromMap(result);
}
