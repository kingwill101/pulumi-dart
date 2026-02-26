import 'package:pulumi/pulumi.dart';
import 'get_storage_pool_types_args.dart';
import 'get_storage_pool_types_result.dart';

Future<GetStoragePoolTypesResult> getStoragePoolTypes(
  GetStoragePoolTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getStoragePoolTypes:getStoragePoolTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolTypesResult.fromMap(result);
}
