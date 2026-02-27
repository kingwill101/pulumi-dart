import 'package:pulumi/pulumi.dart' hide Config;
import 'get_node_template_args.dart';
import 'get_node_template_result.dart';

/// Returns the specified node template.
Future<GetNodeTemplateResult> getNodeTemplate(
  GetNodeTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNodeTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateResult.fromMap(result);
}
