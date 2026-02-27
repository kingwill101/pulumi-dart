import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_instance_template_args2.dart';
import 'get_region_instance_template_result2.dart';

/// Returns the specified instance template.
Future<GetRegionInstanceTemplateResult2> getRegionInstanceTemplate2(
  GetRegionInstanceTemplateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstanceTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateResult2.fromMap(result);
}
