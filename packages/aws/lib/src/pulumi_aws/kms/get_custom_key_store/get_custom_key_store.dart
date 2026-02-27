import 'package:pulumi/pulumi.dart';
import 'get_custom_key_store_args.dart';
import 'get_custom_key_store_result.dart';

/// Use this data source to get the metadata KMS custom key store.
/// By using this data source, you can reference KMS custom key store
/// without having to hard code the ID as input.
Future<GetCustomKeyStoreResult> getCustomKeyStore(
  GetCustomKeyStoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getCustomKeyStore:getCustomKeyStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomKeyStoreResult.fromMap(result);
}
