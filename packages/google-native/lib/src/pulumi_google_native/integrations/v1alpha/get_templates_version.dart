import 'package:pulumi/pulumi.dart';
import 'get_templates_version_args.dart';
import 'get_templates_version_result.dart';

/// Returns an IntegrationTemplateVersion in the specified project.
Future<GetTemplatesVersionResult> getTemplatesVersion(
  GetTemplatesVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getTemplatesVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTemplatesVersionResult.fromMap(result);
}
