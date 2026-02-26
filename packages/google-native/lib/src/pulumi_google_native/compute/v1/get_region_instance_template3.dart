import 'package:pulumi/pulumi.dart';
import 'get_region_instance_template_args3.dart';
import 'get_region_instance_template_result3.dart';

/// Returns the specified instance template.
Future<GetRegionInstanceTemplateResult3> getRegionInstanceTemplate3(
  GetRegionInstanceTemplateArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionInstanceTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateResult3.fromMap(result);
}
