import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_template_compute_v1_args.dart';
import 'get_region_instance_template_compute_v1_result.dart';

/// Returns the specified instance template.
Future<GetRegionInstanceTemplateComputeV1Result>
    getRegionInstanceTemplateComputeV1(
  GetRegionInstanceTemplateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateComputeV1Result.fromMap(result);
}
