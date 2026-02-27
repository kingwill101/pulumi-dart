import 'package:pulumi/pulumi.dart';
import 'get_storage_pool_args.dart';
import 'get_storage_pool_result.dart';

/// Provides access to available Google Compute Storage Pool resources for a given project and zone.
/// See more about [Hyperdisk Storage Pools](https://cloud.google.com/compute/docs/disks/storage-pools) in the upstream docs.
///
/// ## Example Usage
///
///
///
/// ## Note
///
/// * `deletion_protection` is always set to false on the data source and will not be represetative of the actual value on `gcp.compute.StoragePool` reaosure being read
Future<GetStoragePoolResult> getStoragePool(
  GetStoragePoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getStoragePool:getStoragePool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolResult.fromMap(result);
}
