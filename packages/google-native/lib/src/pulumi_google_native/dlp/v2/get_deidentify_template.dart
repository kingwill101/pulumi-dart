import 'package:pulumi/pulumi.dart';
import 'get_deidentify_template_args.dart';
import 'get_deidentify_template_result.dart';

/// Gets a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.
Future<GetDeidentifyTemplateResult> getDeidentifyTemplate(
  GetDeidentifyTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getDeidentifyTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeidentifyTemplateResult.fromMap(result);
}
