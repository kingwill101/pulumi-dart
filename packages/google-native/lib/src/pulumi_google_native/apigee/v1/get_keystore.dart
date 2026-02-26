import 'package:pulumi/pulumi.dart';
import 'get_keystore_args.dart';
import 'get_keystore_result.dart';

/// Gets a keystore or truststore.
Future<GetKeystoreResult> getKeystore(
  GetKeystoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getKeystore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeystoreResult.fromMap(result);
}
