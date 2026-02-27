import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_template_args.dart';
import 'get_region_instance_template_result.dart';

/// Get information about a VM instance template resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instance-templates)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates).
Future<GetRegionInstanceTemplateResult> getRegionInstanceTemplate(
  GetRegionInstanceTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstanceTemplate:getRegionInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateResult.fromMap(result);
}
