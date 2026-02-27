import 'package:pulumi/pulumi.dart' hide Config;
import 'get_version_args6.dart';
import 'get_version_result6.dart';

/// Retrieves the specified Version.
Future<GetVersionResult6> getVersion6(
  GetVersionArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult6.fromMap(result);
}
