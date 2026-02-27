import 'package:pulumi/pulumi.dart' hide Config;
import 'get_version_args7.dart';
import 'get_version_result7.dart';

/// Retrieves the specified Version.
Future<GetVersionResult7> getVersion7(
  GetVersionArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult7.fromMap(result);
}
