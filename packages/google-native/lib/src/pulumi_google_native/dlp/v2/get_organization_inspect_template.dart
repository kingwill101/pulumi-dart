import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_inspect_template_args.dart';
import 'get_organization_inspect_template_result.dart';

/// Gets an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.
Future<GetOrganizationInspectTemplateResult> getOrganizationInspectTemplate(
  GetOrganizationInspectTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getOrganizationInspectTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationInspectTemplateResult.fromMap(result);
}
