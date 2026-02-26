import 'package:pulumi/pulumi.dart';
import 'get_node_template_args3.dart';
import 'get_node_template_result3.dart';

/// Returns the specified node template.
Future<GetNodeTemplateResult3> getNodeTemplate3(
  GetNodeTemplateArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNodeTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateResult3.fromMap(result);
}
