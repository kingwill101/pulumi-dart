import 'package:pulumi/pulumi.dart';
import 'get_storage_pool_args.dart';
import 'get_storage_pool_result.dart';

/// Provides access to available Google Compute Storage Pool resources for a given project and zone.
/// See more about [Hyperdisk Storage Pools](https://cloud.google.com/compute/docs/disks/storage-pools) in the upstream docs.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPool = gcp.compute.getStoragePool({
/// name: "my-storage-pool",
/// zone: "us-central1-a",
/// });
/// export const poolCapacity = myPool.then(myPool => myPool.poolProvisionedCapacityGb);
/// export const poolType = myPool.then(myPool => myPool.storagePoolType);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_pool = gcp.compute.get_storage_pool(name="my-storage-pool",
/// zone="us-central1-a")
/// pulumi.export("poolCapacity", my_pool.pool_provisioned_capacity_gb)
/// pulumi.export("poolType", my_pool.storage_pool_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myPool = Gcp.Compute.GetStoragePool.Invoke(new()
/// {
/// Name = "my-storage-pool",
/// Zone = "us-central1-a",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["poolCapacity"] = myPool.Apply(getStoragePoolResult => getStoragePoolResult.PoolProvisionedCapacityGb),
/// ["poolType"] = myPool.Apply(getStoragePoolResult => getStoragePoolResult.StoragePoolType),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myPool, err := compute.LookupStoragePool(ctx, &compute.LookupStoragePoolArgs{
/// Name: "my-storage-pool",
/// Zone: "us-central1-a",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("poolCapacity", myPool.PoolProvisionedCapacityGb)
/// ctx.Export("poolType", myPool.StoragePoolType)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetStoragePoolArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var myPool = ComputeFunctions.getStoragePool(GetStoragePoolArgs.builder()
/// .name("my-storage-pool")
/// .zone("us-central1-a")
/// .build());
///
/// ctx.export("poolCapacity", myPool.poolProvisionedCapacityGb());
/// ctx.export("poolType", myPool.storagePoolType());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myPool:
/// fn::invoke:
/// function: gcp:compute:getStoragePool
/// arguments:
/// name: my-storage-pool
/// zone: us-central1-a
/// outputs:
/// poolCapacity: ${myPool.poolProvisionedCapacityGb}
/// poolType: ${myPool.storagePoolType}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Note
///
/// * <span pulumi-lang-nodejs="`deletionProtection`" pulumi-lang-dotnet="`DeletionProtection`" pulumi-lang-go="`deletionProtection`" pulumi-lang-python="`deletion_protection`" pulumi-lang-yaml="`deletionProtection`" pulumi-lang-java="`deletionProtection`">`deletion_protection`</span> is always set to false on the data source and will not be represetative of the actual value on <span pulumi-lang-nodejs="`gcp.compute.StoragePool`" pulumi-lang-dotnet="`gcp.compute.StoragePool`" pulumi-lang-go="`compute.StoragePool`" pulumi-lang-python="`compute.StoragePool`" pulumi-lang-yaml="`gcp.compute.StoragePool`" pulumi-lang-java="`gcp.compute.StoragePool`">`gcp.compute.StoragePool`</span> reaosure being read
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
