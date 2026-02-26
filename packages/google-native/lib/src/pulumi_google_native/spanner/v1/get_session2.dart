import 'package:pulumi/pulumi.dart';
import 'get_session_args2.dart';
import 'get_session_result2.dart';

/// Gets a session. Returns `NOT_FOUND` if the session does not exist. This is mainly useful for determining whether a session is still alive.
Future<GetSessionResult2> getSession2(
  GetSessionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getSession',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSessionResult2.fromMap(result);
}
