import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_template_args3.dart';
import 'get_instance_template_result3.dart';

/// Returns the specified instance template.
Future<GetInstanceTemplateResult3> getInstanceTemplate3(
  GetInstanceTemplateArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateResult3.fromMap(result);
}
