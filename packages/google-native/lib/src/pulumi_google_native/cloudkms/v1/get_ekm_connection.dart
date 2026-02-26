import 'package:pulumi/pulumi.dart';
import 'get_ekm_connection_args.dart';
import 'get_ekm_connection_result.dart';

/// Returns metadata for a given EkmConnection.
Future<GetEkmConnectionResult> getEkmConnection(
  GetEkmConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getEkmConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEkmConnectionResult.fromMap(result);
}
