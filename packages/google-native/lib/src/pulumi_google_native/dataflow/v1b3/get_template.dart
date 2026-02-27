import 'package:pulumi/pulumi.dart' hide Config;
import 'get_template_args.dart';
import 'get_template_result.dart';

/// Get the template associated with a template.
Future<GetTemplateResult> getTemplate(
  GetTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataflow/v1b3:getTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTemplateResult.fromMap(result);
}
