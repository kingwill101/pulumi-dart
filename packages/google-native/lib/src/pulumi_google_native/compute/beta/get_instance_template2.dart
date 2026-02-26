import 'package:pulumi/pulumi.dart';
import 'get_instance_template_args2.dart';
import 'get_instance_template_result2.dart';

/// Returns the specified instance template.
Future<GetInstanceTemplateResult2> getInstanceTemplate2(
  GetInstanceTemplateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateResult2.fromMap(result);
}
