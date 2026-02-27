import 'package:pulumi/pulumi.dart' hide Config;
import 'get_inspect_template_args.dart';
import 'get_inspect_template_result.dart';

/// Gets an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.
Future<GetInspectTemplateResult> getInspectTemplate(
  GetInspectTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getInspectTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInspectTemplateResult.fromMap(result);
}
