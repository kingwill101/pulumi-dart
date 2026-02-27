import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_template_args.dart';
import 'get_region_instance_template_result.dart';

/// Returns the specified instance template.
Future<GetRegionInstanceTemplateResult> getRegionInstanceTemplate(
  GetRegionInstanceTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateResult.fromMap(result);
}
