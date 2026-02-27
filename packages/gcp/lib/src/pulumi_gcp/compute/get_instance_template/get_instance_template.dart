import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_template_args.dart';
import 'get_instance_template_result.dart';

/// > **Note**: Global instance templates can be used in any region. To lower the impact of outages outside your region and gain data residency within your region, use google_compute_region_instance_template.
///
/// Get information about a VM instance template resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instance-templates)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates).
Future<GetInstanceTemplateResult> getInstanceTemplate(
  GetInstanceTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceTemplate:getInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateResult.fromMap(result);
}
