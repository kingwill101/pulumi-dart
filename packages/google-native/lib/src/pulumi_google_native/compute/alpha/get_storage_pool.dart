import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_pool_args.dart';
import 'get_storage_pool_result.dart';

/// Returns a specified storage pool. Gets a list of available storage pools by making a list() request.
Future<GetStoragePoolResult> getStoragePool(
  GetStoragePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getStoragePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolResult.fromMap(result);
}
