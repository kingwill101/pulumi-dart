import 'package:pulumi/pulumi.dart';
import 'get_device_session_args.dart';
import 'get_device_session_result.dart';

/// GET /v1/projects/{project_id}/deviceSessions/{device_session_id} Return a DeviceSession, which documents the allocation status and whether the device is allocated. Clients making requests from this API must poll GetDeviceSession.
Future<GetDeviceSessionResult> getDeviceSession(
  GetDeviceSessionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:testing/v1:getDeviceSession',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeviceSessionResult.fromMap(result);
}
