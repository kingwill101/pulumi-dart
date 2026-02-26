import 'package:pulumi/pulumi.dart';
import 'get_version_args4.dart';
import 'get_version_result4.dart';

/// Retrieves the specified agent version.
Future<GetVersionResult4> getVersion4(
  GetVersionArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult4.fromMap(result);
}
