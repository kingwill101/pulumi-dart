import 'package:pulumi/pulumi.dart' hide Config;
import 'get_hmac_key_args.dart';
import 'get_hmac_key_result.dart';

/// Retrieves an HMAC key's metadata
Future<GetHmacKeyResult> getHmacKey(
  GetHmacKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getHmacKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHmacKeyResult.fromMap(result);
}
