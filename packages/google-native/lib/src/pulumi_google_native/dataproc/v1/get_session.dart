import 'package:pulumi/pulumi.dart' hide Config;
import 'get_session_args.dart';
import 'get_session_result.dart';

/// Gets the resource representation for an interactive session.
Future<GetSessionResult> getSession(
  GetSessionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getSession',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSessionResult.fromMap(result);
}
