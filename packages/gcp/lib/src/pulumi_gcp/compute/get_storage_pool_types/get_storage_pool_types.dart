import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_pool_types_args.dart';
import 'get_storage_pool_types_result.dart';

Future<GetStoragePoolTypesResult> getStoragePoolTypes(
  GetStoragePoolTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getStoragePoolTypes:getStoragePoolTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolTypesResult.fromMap(result);
}
