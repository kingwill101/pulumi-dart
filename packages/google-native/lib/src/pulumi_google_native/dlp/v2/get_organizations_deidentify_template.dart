import 'package:pulumi/pulumi.dart';
import 'get_organizations_deidentify_template_args.dart';
import 'get_organizations_deidentify_template_result.dart';

/// Gets a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.
Future<GetOrganizationsDeidentifyTemplateResult>
    getOrganizationsDeidentifyTemplate(
  GetOrganizationsDeidentifyTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getOrganizationsDeidentifyTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationsDeidentifyTemplateResult.fromMap(result);
}
