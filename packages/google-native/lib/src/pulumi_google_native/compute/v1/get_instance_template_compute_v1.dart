import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_template_compute_v1_args.dart';
import 'get_instance_template_compute_v1_result.dart';

/// Returns the specified instance template.
Future<GetInstanceTemplateComputeV1Result> getInstanceTemplateComputeV1(
  GetInstanceTemplateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateComputeV1Result.fromMap(result);
}
