import 'package:pulumi/pulumi.dart' hide Config;
import 'get_version_args5.dart';
import 'get_version_result5.dart';

/// Retrieves the specified agent version.
Future<GetVersionResult5> getVersion5(
  GetVersionArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult5.fromMap(result);
}
