import 'package:pulumi/pulumi.dart' hide Config;
import 'get_session_template_args.dart';
import 'get_session_template_result.dart';

/// Gets the resource representation for a session template.
Future<GetSessionTemplateResult> getSessionTemplate(
  GetSessionTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getSessionTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSessionTemplateResult.fromMap(result);
}
