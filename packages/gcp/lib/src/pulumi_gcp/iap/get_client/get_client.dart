import 'package:pulumi/pulumi.dart';
import 'get_client_args.dart';
import 'get_client_result.dart';

/// Get info about a Google Cloud IAP Client.
Future<GetClientResult> getClient(
  GetClientArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getClient:getClient',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientResult.fromMap(result);
}
