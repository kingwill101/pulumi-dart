import 'package:pulumi/pulumi.dart';
import 'get_control_project_intelligence_config_args.dart';
import 'get_control_project_intelligence_config_result.dart';

/// Use this data source to get information about a Project Storage Intelligence config resource.
/// See [the official documentation](https://cloud.google.com/storage/docs/storage-intelligence/overview#resource)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/intelligenceConfig).
Future<GetControlProjectIntelligenceConfigResult>
    getControlProjectIntelligenceConfig(
  GetControlProjectIntelligenceConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceConfig:getControlProjectIntelligenceConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetControlProjectIntelligenceConfigResult.fromMap(result);
}
