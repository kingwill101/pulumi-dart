import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ekm_connection_args.dart';
import 'get_ekm_connection_result.dart';

/// Returns metadata for a given EkmConnection.
Future<GetEkmConnectionResult> getEkmConnection(
  GetEkmConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getEkmConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEkmConnectionResult.fromMap(result);
}
