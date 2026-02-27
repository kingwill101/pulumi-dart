import 'package:pulumi/pulumi.dart';
import 'get_control_organization_intelligence_config_args.dart';
import 'get_control_organization_intelligence_config_result.dart';

/// Use this data source to get information about a Organization Storage Intelligence config resource.
/// See [the official documentation](https://cloud.google.com/storage/docs/storage-intelligence/overview#resource)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/intelligenceConfig).
Future<GetControlOrganizationIntelligenceConfigResult>
    getControlOrganizationIntelligenceConfig(
  GetControlOrganizationIntelligenceConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlOrganizationIntelligenceConfig:getControlOrganizationIntelligenceConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetControlOrganizationIntelligenceConfigResult.fromMap(result);
}
