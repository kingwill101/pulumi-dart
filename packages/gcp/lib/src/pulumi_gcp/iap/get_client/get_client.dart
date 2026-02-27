import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_args.dart';
import 'get_client_result.dart';

/// Get info about a Google Cloud IAP Client.
Future<GetClientResult> getClient(
  GetClientArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getClient:getClient',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientResult.fromMap(result);
}
