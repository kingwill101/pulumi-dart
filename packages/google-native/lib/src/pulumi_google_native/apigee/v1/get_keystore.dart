import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_keystore_args.dart';
import 'get_keystore_result.dart';

/// Gets a keystore or truststore.
Future<GetKeystoreResult> getKeystore(
  GetKeystoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getKeystore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeystoreResult.fromMap(result);
}
