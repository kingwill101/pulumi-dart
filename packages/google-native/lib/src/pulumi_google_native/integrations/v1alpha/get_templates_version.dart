import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_templates_version_args.dart';
import 'get_templates_version_result.dart';

/// Returns an IntegrationTemplateVersion in the specified project.
Future<GetTemplatesVersionResult> getTemplatesVersion(
  GetTemplatesVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getTemplatesVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplatesVersionResult.fromMap(result);
}
