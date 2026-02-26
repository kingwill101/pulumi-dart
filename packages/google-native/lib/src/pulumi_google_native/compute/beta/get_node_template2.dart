import 'package:pulumi/pulumi.dart';
import 'get_node_template_args2.dart';
import 'get_node_template_result2.dart';

/// Returns the specified node template.
Future<GetNodeTemplateResult2> getNodeTemplate2(
  GetNodeTemplateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateResult2.fromMap(result);
}
