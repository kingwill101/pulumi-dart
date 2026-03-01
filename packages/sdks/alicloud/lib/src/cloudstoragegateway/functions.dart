import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_express_syncs_args.dart';
import 'get_express_syncs_result.dart';
import 'get_gateway_block_volumes_args.dart';
import 'get_gateway_block_volumes_result.dart';
import 'get_gateway_cache_disks_args.dart';
import 'get_gateway_cache_disks_result.dart';
import 'get_gateway_file_shares_args.dart';
import 'get_gateway_file_shares_result.dart';
import 'get_gateway_smb_users_args.dart';
import 'get_gateway_smb_users_result.dart';
import 'get_gateways_args.dart';
import 'get_gateways_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_stocks_args.dart';
import 'get_stocks_result.dart';
import 'get_storage_bundles_args.dart';
import 'get_storage_bundles_result.dart';

/// This data source provides the Cloud Storage Gateway Express Syncs of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.144.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudstoragegateway.getExpressSyncs({});
/// export const cloudStorageGatewayExpressSyncId1 = ids.then(ids => ids.syncs?.[0]?.id);
/// const nameRegex = alicloud.cloudstoragegateway.getExpressSyncs({
///     nameRegex: "^my-ExpressSync",
/// });
/// export const cloudStorageGatewayExpressSyncId2 = nameRegex.then(nameRegex => nameRegex.syncs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudstoragegateway.get_express_syncs()
/// pulumi.export("cloudStorageGatewayExpressSyncId1", ids.syncs[0].id)
/// name_regex = alicloud.cloudstoragegateway.get_express_syncs(name_regex="^my-ExpressSync")
/// pulumi.export("cloudStorageGatewayExpressSyncId2", name_regex.syncs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudStorageGateway.GetExpressSyncs.Invoke();
///
///     var nameRegex = AliCloud.CloudStorageGateway.GetExpressSyncs.Invoke(new()
///     {
///         NameRegex = "^my-ExpressSync",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudStorageGatewayExpressSyncId1"] = ids.Apply(getExpressSyncsResult => getExpressSyncsResult.Syncs[0]?.Id),
///         ["cloudStorageGatewayExpressSyncId2"] = nameRegex.Apply(getExpressSyncsResult => getExpressSyncsResult.Syncs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudstoragegateway.GetExpressSyncs(ctx, &cloudstoragegateway.GetExpressSyncsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudStorageGatewayExpressSyncId1", ids.Syncs[0].Id)
/// 		nameRegex, err := cloudstoragegateway.GetExpressSyncs(ctx, &cloudstoragegateway.GetExpressSyncsArgs{
/// 			NameRegex: pulumi.StringRef("^my-ExpressSync"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudStorageGatewayExpressSyncId2", nameRegex.Syncs[0].Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudstoragegateway.CloudstoragegatewayFunctions;
/// import com.pulumi.alicloud.cloudstoragegateway.inputs.GetExpressSyncsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var ids = CloudstoragegatewayFunctions.getExpressSyncs(GetExpressSyncsArgs.builder()
///             .build());
///
///         ctx.export("cloudStorageGatewayExpressSyncId1", ids.syncs()[0].id());
///         final var nameRegex = CloudstoragegatewayFunctions.getExpressSyncs(GetExpressSyncsArgs.builder()
///             .nameRegex("^my-ExpressSync")
///             .build());
///
///         ctx.export("cloudStorageGatewayExpressSyncId2", nameRegex.syncs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getExpressSyncs
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getExpressSyncs
///       arguments:
///         nameRegex: ^my-ExpressSync
/// outputs:
///   cloudStorageGatewayExpressSyncId1: ${ids.syncs[0].id}
///   cloudStorageGatewayExpressSyncId2: ${nameRegex.syncs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudstoragegateway_get_express_syncs_get_express_syncs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressSyncsResult> getExpressSyncs(
  GetExpressSyncsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudstoragegateway/getExpressSyncs:getExpressSyncs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressSyncsResult.fromMap(result);
}

/// This data source provides the Cloud Storage Gateway Gateway Block Volumes of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.144.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudstoragegateway.getGatewayBlockVolumes({
///     gatewayId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cloudStorageGatewayGatewayBlockVolumeId1 = ids.then(ids => ids.volumes?.[0]?.id);
/// const nameRegex = alicloud.cloudstoragegateway.getGatewayBlockVolumes({
///     gatewayId: "example_value",
///     nameRegex: "^my-GatewayBlockVolume",
/// });
/// export const cloudStorageGatewayGatewayBlockVolumeId2 = nameRegex.then(nameRegex => nameRegex.volumes?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudstoragegateway.get_gateway_block_volumes(gateway_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cloudStorageGatewayGatewayBlockVolumeId1", ids.volumes[0].id)
/// name_regex = alicloud.cloudstoragegateway.get_gateway_block_volumes(gateway_id="example_value",
///     name_regex="^my-GatewayBlockVolume")
/// pulumi.export("cloudStorageGatewayGatewayBlockVolumeId2", name_regex.volumes[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudStorageGateway.GetGatewayBlockVolumes.Invoke(new()
///     {
///         GatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.CloudStorageGateway.GetGatewayBlockVolumes.Invoke(new()
///     {
///         GatewayId = "example_value",
///         NameRegex = "^my-GatewayBlockVolume",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudStorageGatewayGatewayBlockVolumeId1"] = ids.Apply(getGatewayBlockVolumesResult => getGatewayBlockVolumesResult.Volumes[0]?.Id),
///         ["cloudStorageGatewayGatewayBlockVolumeId2"] = nameRegex.Apply(getGatewayBlockVolumesResult => getGatewayBlockVolumesResult.Volumes[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudstoragegateway.GetGatewayBlockVolumes(ctx, &cloudstoragegateway.GetGatewayBlockVolumesArgs{
/// 			GatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudStorageGatewayGatewayBlockVolumeId1", ids.Volumes[0].Id)
/// 		nameRegex, err := cloudstoragegateway.GetGatewayBlockVolumes(ctx, &cloudstoragegateway.GetGatewayBlockVolumesArgs{
/// 			GatewayId: "example_value",
/// 			NameRegex: pulumi.StringRef("^my-GatewayBlockVolume"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudStorageGatewayGatewayBlockVolumeId2", nameRegex.Volumes[0].Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudstoragegateway.CloudstoragegatewayFunctions;
/// import com.pulumi.alicloud.cloudstoragegateway.inputs.GetGatewayBlockVolumesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var ids = CloudstoragegatewayFunctions.getGatewayBlockVolumes(GetGatewayBlockVolumesArgs.builder()
///             .gatewayId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cloudStorageGatewayGatewayBlockVolumeId1", ids.volumes()[0].id());
///         final var nameRegex = CloudstoragegatewayFunctions.getGatewayBlockVolumes(GetGatewayBlockVolumesArgs.builder()
///             .gatewayId("example_value")
///             .nameRegex("^my-GatewayBlockVolume")
///             .build());
///
///         ctx.export("cloudStorageGatewayGatewayBlockVolumeId2", nameRegex.volumes()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getGatewayBlockVolumes
///       arguments:
///         gatewayId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getGatewayBlockVolumes
///       arguments:
///         gatewayId: example_value
///         nameRegex: ^my-GatewayBlockVolume
/// outputs:
///   cloudStorageGatewayGatewayBlockVolumeId1: ${ids.volumes[0].id}
///   cloudStorageGatewayGatewayBlockVolumeId2: ${nameRegex.volumes[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudstoragegateway_get_gateway_block_volumes_get_gateway_block_volumes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayBlockVolumesResult> getGatewayBlockVolumes(
  GetGatewayBlockVolumesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudstoragegateway/getGatewayBlockVolumes:getGatewayBlockVolumes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayBlockVolumesResult.fromMap(result);
}

/// This data source provides the Cloud Storage Gateway Gateway Cache Disks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.144.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudstoragegateway.getGatewayCacheDisks({
///     gatewayId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cloudStorageGatewayGatewayCacheDiskId1 = ids.then(ids => ids.disks?.[0]?.id);
/// const status = alicloud.cloudstoragegateway.getGatewayCacheDisks({
///     gatewayId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
///     status: 0,
/// });
/// export const cloudStorageGatewayGatewayCacheDiskId2 = status.then(status => status.disks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudstoragegateway.get_gateway_cache_disks(gateway_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cloudStorageGatewayGatewayCacheDiskId1", ids.disks[0].id)
/// status = alicloud.cloudstoragegateway.get_gateway_cache_disks(gateway_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ],
///     status=0)
/// pulumi.export("cloudStorageGatewayGatewayCacheDiskId2", status.disks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudStorageGateway.GetGatewayCacheDisks.Invoke(new()
///     {
///         GatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var status = AliCloud.CloudStorageGateway.GetGatewayCacheDisks.Invoke(new()
///     {
///         GatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///         Status = 0,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudStorageGatewayGatewayCacheDiskId1"] = ids.Apply(getGatewayCacheDisksResult => getGatewayCacheDisksResult.Disks[0]?.Id),
///         ["cloudStorageGatewayGatewayCacheDiskId2"] = status.Apply(getGatewayCacheDisksResult => getGatewayCacheDisksResult.Disks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudstoragegateway.GetGatewayCacheDisks(ctx, &cloudstoragegateway.GetGatewayCacheDisksArgs{
/// 			GatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudStorageGatewayGatewayCacheDiskId1", ids.Disks[0].Id)
/// 		status, err := cloudstoragegateway.GetGatewayCacheDisks(ctx, &cloudstoragegateway.GetGatewayCacheDisksArgs{
/// 			GatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 			Status: pulumi.IntRef(0),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudStorageGatewayGatewayCacheDiskId2", status.Disks[0].Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudstoragegateway.CloudstoragegatewayFunctions;
/// import com.pulumi.alicloud.cloudstoragegateway.inputs.GetGatewayCacheDisksArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var ids = CloudstoragegatewayFunctions.getGatewayCacheDisks(GetGatewayCacheDisksArgs.builder()
///             .gatewayId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cloudStorageGatewayGatewayCacheDiskId1", ids.disks()[0].id());
///         final var status = CloudstoragegatewayFunctions.getGatewayCacheDisks(GetGatewayCacheDisksArgs.builder()
///             .gatewayId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .status(0)
///             .build());
///
///         ctx.export("cloudStorageGatewayGatewayCacheDiskId2", status.disks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getGatewayCacheDisks
///       arguments:
///         gatewayId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   status:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getGatewayCacheDisks
///       arguments:
///         gatewayId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///         status: '0'
/// outputs:
///   cloudStorageGatewayGatewayCacheDiskId1: ${ids.disks[0].id}
///   cloudStorageGatewayGatewayCacheDiskId2: ${status.disks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudstoragegateway_get_gateway_cache_disks_get_gateway_cache_disks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayCacheDisksResult> getGatewayCacheDisks(
  GetGatewayCacheDisksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudstoragegateway/getGatewayCacheDisks:getGatewayCacheDisks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayCacheDisksResult.fromMap(result);
}

/// This data source provides the Cloud Storage Gateway Gateway File Shares of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.144.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudstoragegateway.getGatewayFileShares({
///     gatewayId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cloudStorageGatewayGatewayFileShareId1 = ids.then(ids => ids.shares?.[0]?.id);
/// const nameRegex = alicloud.cloudstoragegateway.getGatewayFileShares({
///     gatewayId: "example_value",
///     nameRegex: "^my-GatewayFileShare",
/// });
/// export const cloudStorageGatewayGatewayFileShareId2 = nameRegex.then(nameRegex => nameRegex.shares?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudstoragegateway.get_gateway_file_shares(gateway_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cloudStorageGatewayGatewayFileShareId1", ids.shares[0].id)
/// name_regex = alicloud.cloudstoragegateway.get_gateway_file_shares(gateway_id="example_value",
///     name_regex="^my-GatewayFileShare")
/// pulumi.export("cloudStorageGatewayGatewayFileShareId2", name_regex.shares[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudStorageGateway.GetGatewayFileShares.Invoke(new()
///     {
///         GatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.CloudStorageGateway.GetGatewayFileShares.Invoke(new()
///     {
///         GatewayId = "example_value",
///         NameRegex = "^my-GatewayFileShare",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudStorageGatewayGatewayFileShareId1"] = ids.Apply(getGatewayFileSharesResult => getGatewayFileSharesResult.Shares[0]?.Id),
///         ["cloudStorageGatewayGatewayFileShareId2"] = nameRegex.Apply(getGatewayFileSharesResult => getGatewayFileSharesResult.Shares[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudstoragegateway.GetGatewayFileShares(ctx, &cloudstoragegateway.GetGatewayFileSharesArgs{
/// 			GatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudStorageGatewayGatewayFileShareId1", ids.Shares[0].Id)
/// 		nameRegex, err := cloudstoragegateway.GetGatewayFileShares(ctx, &cloudstoragegateway.GetGatewayFileSharesArgs{
/// 			GatewayId: "example_value",
/// 			NameRegex: pulumi.StringRef("^my-GatewayFileShare"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudStorageGatewayGatewayFileShareId2", nameRegex.Shares[0].Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudstoragegateway.CloudstoragegatewayFunctions;
/// import com.pulumi.alicloud.cloudstoragegateway.inputs.GetGatewayFileSharesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var ids = CloudstoragegatewayFunctions.getGatewayFileShares(GetGatewayFileSharesArgs.builder()
///             .gatewayId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cloudStorageGatewayGatewayFileShareId1", ids.shares()[0].id());
///         final var nameRegex = CloudstoragegatewayFunctions.getGatewayFileShares(GetGatewayFileSharesArgs.builder()
///             .gatewayId("example_value")
///             .nameRegex("^my-GatewayFileShare")
///             .build());
///
///         ctx.export("cloudStorageGatewayGatewayFileShareId2", nameRegex.shares()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getGatewayFileShares
///       arguments:
///         gatewayId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getGatewayFileShares
///       arguments:
///         gatewayId: example_value
///         nameRegex: ^my-GatewayFileShare
/// outputs:
///   cloudStorageGatewayGatewayFileShareId1: ${ids.shares[0].id}
///   cloudStorageGatewayGatewayFileShareId2: ${nameRegex.shares[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudstoragegateway_get_gateway_file_shares_get_gateway_file_shares_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayFileSharesResult> getGatewayFileShares(
  GetGatewayFileSharesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudstoragegateway/getGatewayFileShares:getGatewayFileShares',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayFileSharesResult.fromMap(result);
}

/// This data source provides the Cloud Storage Gateway Gateway SMB Users of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.142.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.vpc.getNetworks({
///     nameRegex: "default-NODELETING",
/// });
/// const defaultGetSwitches = _default.then(_default => alicloud.vpc.getSwitches({
///     vpcId: _default.ids?.[0],
/// }));
/// const example = new alicloud.cloudstoragegateway.StorageBundle("example", {storageBundleName: "example_value"});
/// const defaultGateway = new alicloud.cloudstoragegateway.Gateway("default", {
///     description: "tf-acctestDesalone",
///     gatewayClass: "Standard",
///     type: "File",
///     paymentType: "PayAsYouGo",
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     releaseAfterExpiration: false,
///     publicNetworkBandwidth: 40,
///     storageBundleId: example.id,
///     location: "Cloud",
///     gatewayName: "example_value",
/// });
/// const defaultGatewaySmbUser = new alicloud.cloudstoragegateway.GatewaySmbUser("default", {
///     username: "your_username",
///     password: "password",
///     gatewayId: defaultGateway.id,
/// });
/// const ids = alicloud.cloudstoragegateway.getGatewaySmbUsersOutput({
///     gatewayId: defaultGateway.id,
///     ids: [defaultGatewaySmbUser.id],
/// });
/// export const cloudStorageGatewayGatewaySmbUserId1 = ids.apply(ids => ids.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.vpc.get_networks(name_regex="default-NODELETING")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default.ids[0])
/// example = alicloud.cloudstoragegateway.StorageBundle("example", storage_bundle_name="example_value")
/// default_gateway = alicloud.cloudstoragegateway.Gateway("default",
///     description="tf-acctestDesalone",
///     gateway_class="Standard",
///     type="File",
///     payment_type="PayAsYouGo",
///     vswitch_id=default_get_switches.ids[0],
///     release_after_expiration=False,
///     public_network_bandwidth=40,
///     storage_bundle_id=example.id,
///     location="Cloud",
///     gateway_name="example_value")
/// default_gateway_smb_user = alicloud.cloudstoragegateway.GatewaySmbUser("default",
///     username="your_username",
///     password="password",
///     gateway_id=default_gateway.id)
/// ids = alicloud.cloudstoragegateway.get_gateway_smb_users_output(gateway_id=default_gateway.id,
///     ids=[default_gateway_smb_user.id])
/// pulumi.export("cloudStorageGatewayGatewaySmbUserId1", ids.users[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "default-NODELETING",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = @default.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var example = new AliCloud.CloudStorageGateway.StorageBundle("example", new()
///     {
///         StorageBundleName = "example_value",
///     });
///
///     var defaultGateway = new AliCloud.CloudStorageGateway.Gateway("default", new()
///     {
///         Description = "tf-acctestDesalone",
///         GatewayClass = "Standard",
///         Type = "File",
///         PaymentType = "PayAsYouGo",
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         ReleaseAfterExpiration = false,
///         PublicNetworkBandwidth = 40,
///         StorageBundleId = example.Id,
///         Location = "Cloud",
///         GatewayName = "example_value",
///     });
///
///     var defaultGatewaySmbUser = new AliCloud.CloudStorageGateway.GatewaySmbUser("default", new()
///     {
///         Username = "your_username",
///         Password = "password",
///         GatewayId = defaultGateway.Id,
///     });
///
///     var ids = AliCloud.CloudStorageGateway.GetGatewaySmbUsers.Invoke(new()
///     {
///         GatewayId = defaultGateway.Id,
///         Ids = new[]
///         {
///             defaultGatewaySmbUser.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudStorageGatewayGatewaySmbUserId1"] = ids.Apply(getGatewaySmbUsersResult => getGatewaySmbUsersResult.Users[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("default-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cloudstoragegateway.NewStorageBundle(ctx, "example", &cloudstoragegateway.StorageBundleArgs{
/// 			StorageBundleName: pulumi.String("example_value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGateway, err := cloudstoragegateway.NewGateway(ctx, "default", &cloudstoragegateway.GatewayArgs{
/// 			Description:            pulumi.String("tf-acctestDesalone"),
/// 			GatewayClass:           pulumi.String("Standard"),
/// 			Type:                   pulumi.String("File"),
/// 			PaymentType:            pulumi.String("PayAsYouGo"),
/// 			VswitchId:              pulumi.String(defaultGetSwitches.Ids[0]),
/// 			ReleaseAfterExpiration: pulumi.Bool(false),
/// 			PublicNetworkBandwidth: pulumi.Int(40),
/// 			StorageBundleId:        example.ID(),
/// 			Location:               pulumi.String("Cloud"),
/// 			GatewayName:            pulumi.String("example_value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGatewaySmbUser, err := cloudstoragegateway.NewGatewaySmbUser(ctx, "default", &cloudstoragegateway.GatewaySmbUserArgs{
/// 			Username:  pulumi.String("your_username"),
/// 			Password:  pulumi.String("password"),
/// 			GatewayId: defaultGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := cloudstoragegateway.GetGatewaySmbUsersOutput(ctx, cloudstoragegateway.GetGatewaySmbUsersOutputArgs{
/// 			GatewayId: defaultGateway.ID(),
/// 			Ids: pulumi.StringArray{
/// 				defaultGatewaySmbUser.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("cloudStorageGatewayGatewaySmbUserId1", ids.ApplyT(func(ids cloudstoragegateway.GetGatewaySmbUsersResult) (*string, error) {
/// 			return &ids.Users[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundle;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundleArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.Gateway;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewayArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewaySmbUser;
/// import com.pulumi.alicloud.cloudstoragegateway.GatewaySmbUserArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.CloudstoragegatewayFunctions;
/// import com.pulumi.alicloud.cloudstoragegateway.inputs.GetGatewaySmbUsersArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("default-NODELETING")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(default_.ids()[0])
///             .build());
///
///         var example = new StorageBundle("example", StorageBundleArgs.builder()
///             .storageBundleName("example_value")
///             .build());
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .description("tf-acctestDesalone")
///             .gatewayClass("Standard")
///             .type("File")
///             .paymentType("PayAsYouGo")
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .releaseAfterExpiration(false)
///             .publicNetworkBandwidth(40)
///             .storageBundleId(example.id())
///             .location("Cloud")
///             .gatewayName("example_value")
///             .build());
///
///         var defaultGatewaySmbUser = new GatewaySmbUser("defaultGatewaySmbUser", GatewaySmbUserArgs.builder()
///             .username("your_username")
///             .password("password")
///             .gatewayId(defaultGateway.id())
///             .build());
///
///         final var ids = CloudstoragegatewayFunctions.getGatewaySmbUsers(GetGatewaySmbUsersArgs.builder()
///             .gatewayId(defaultGateway.id())
///             .ids(defaultGatewaySmbUser.id())
///             .build());
///
///         ctx.export("cloudStorageGatewayGatewaySmbUserId1", ids.applyValue(_ids -> _ids.users()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cloudstoragegateway:StorageBundle
///     properties:
///       storageBundleName: example_value
///   defaultGateway:
///     type: alicloud:cloudstoragegateway:Gateway
///     name: default
///     properties:
///       description: tf-acctestDesalone
///       gatewayClass: Standard
///       type: File
///       paymentType: PayAsYouGo
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       releaseAfterExpiration: false
///       publicNetworkBandwidth: 40
///       storageBundleId: ${example.id}
///       location: Cloud
///       gatewayName: example_value
///   defaultGatewaySmbUser:
///     type: alicloud:cloudstoragegateway:GatewaySmbUser
///     name: default
///     properties:
///       username: your_username
///       password: password
///       gatewayId: ${defaultGateway.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: default-NODELETING
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${default.ids[0]}
///   ids:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getGatewaySmbUsers
///       arguments:
///         gatewayId: ${defaultGateway.id}
///         ids:
///           - ${defaultGatewaySmbUser.id}
/// outputs:
///   cloudStorageGatewayGatewaySmbUserId1: ${ids.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudstoragegateway_get_gateway_smb_users_get_gateway_smb_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewaySmbUsersResult> getGatewaySmbUsers(
  GetGatewaySmbUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudstoragegateway/getGatewaySmbUsers:getGatewaySmbUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewaySmbUsersResult.fromMap(result);
}

/// This data source provides the Cloud Storage Gateway Gateways of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.132.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.cloudstoragegateway.StorageBundle("example", {storageBundleName: "example_value"});
/// const nameRegex = alicloud.cloudstoragegateway.getGatewaysOutput({
///     storageBundleId: example.id,
///     nameRegex: "^my-Gateway",
/// });
/// export const cloudStorageGatewayGatewayId = nameRegex.apply(nameRegex => nameRegex.gateways?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cloudstoragegateway.StorageBundle("example", storage_bundle_name="example_value")
/// name_regex = alicloud.cloudstoragegateway.get_gateways_output(storage_bundle_id=example.id,
///     name_regex="^my-Gateway")
/// pulumi.export("cloudStorageGatewayGatewayId", name_regex.gateways[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.CloudStorageGateway.StorageBundle("example", new()
///     {
///         StorageBundleName = "example_value",
///     });
///
///     var nameRegex = AliCloud.CloudStorageGateway.GetGateways.Invoke(new()
///     {
///         StorageBundleId = example.Id,
///         NameRegex = "^my-Gateway",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudStorageGatewayGatewayId"] = nameRegex.Apply(getGatewaysResult => getGatewaysResult.Gateways[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudstoragegateway.NewStorageBundle(ctx, "example", &cloudstoragegateway.StorageBundleArgs{
/// 			StorageBundleName: pulumi.String("example_value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nameRegex := cloudstoragegateway.GetGatewaysOutput(ctx, cloudstoragegateway.GetGatewaysOutputArgs{
/// 			StorageBundleId: example.ID(),
/// 			NameRegex:       pulumi.String("^my-Gateway"),
/// 		}, nil)
/// 		ctx.Export("cloudStorageGatewayGatewayId", nameRegex.ApplyT(func(nameRegex cloudstoragegateway.GetGatewaysResult) (*string, error) {
/// 			return &nameRegex.Gateways[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundle;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundleArgs;
/// import com.pulumi.alicloud.cloudstoragegateway.CloudstoragegatewayFunctions;
/// import com.pulumi.alicloud.cloudstoragegateway.inputs.GetGatewaysArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new StorageBundle("example", StorageBundleArgs.builder()
///             .storageBundleName("example_value")
///             .build());
///
///         final var nameRegex = CloudstoragegatewayFunctions.getGateways(GetGatewaysArgs.builder()
///             .storageBundleId(example.id())
///             .nameRegex("^my-Gateway")
///             .build());
///
///         ctx.export("cloudStorageGatewayGatewayId", nameRegex.applyValue(_nameRegex -> _nameRegex.gateways()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cloudstoragegateway:StorageBundle
///     properties:
///       storageBundleName: example_value
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getGateways
///       arguments:
///         storageBundleId: ${example.id}
///         nameRegex: ^my-Gateway
/// outputs:
///   cloudStorageGatewayGatewayId: ${nameRegex.gateways[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudstoragegateway_get_gateways_get_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewaysResult> getGateways(
  GetGatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudstoragegateway/getGateways:getGateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewaysResult.fromMap(result);
}

/// Using this data source can open Cloud Storage Gateway service automatically. If the service has been opened, it will return opened.
///
/// For information about Cloud Storage Gateway and how to use it, see [What is Cloud Storage Gateway](https://www.alibabacloud.com/help/en/product/53923.htm).
///
/// > **NOTE:** Available in v1.117.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.cloudstoragegateway.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.cloudstoragegateway.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.CloudStorageGateway.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudstoragegateway.GetService(ctx, &cloudstoragegateway.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudstoragegateway.CloudstoragegatewayFunctions;
/// import com.pulumi.alicloud.cloudstoragegateway.inputs.GetServiceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var open = CloudstoragegatewayFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudstoragegateway_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudstoragegateway/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the Cloud Storage Gateway Stocks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.144.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cloudstoragegateway.getStocks({
///     gatewayClass: "Advanced",
/// });
/// export const zoneId = _default.then(_default => _default.stocks?.[0]?.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cloudstoragegateway.get_stocks(gateway_class="Advanced")
/// pulumi.export("zoneId", default.stocks[0].zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.CloudStorageGateway.GetStocks.Invoke(new()
///     {
///         GatewayClass = "Advanced",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["zoneId"] = @default.Apply(@default => @default.Apply(getStocksResult => getStocksResult.Stocks[0]?.ZoneId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cloudstoragegateway.GetStocks(ctx, &cloudstoragegateway.GetStocksArgs{
/// 			GatewayClass: pulumi.StringRef("Advanced"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("zoneId", _default.Stocks[0].ZoneId)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudstoragegateway.CloudstoragegatewayFunctions;
/// import com.pulumi.alicloud.cloudstoragegateway.inputs.GetStocksArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = CloudstoragegatewayFunctions.getStocks(GetStocksArgs.builder()
///             .gatewayClass("Advanced")
///             .build());
///
///         ctx.export("zoneId", default_.stocks()[0].zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudstoragegateway:getStocks
///       arguments:
///         gatewayClass: Advanced
/// outputs:
///   zoneId: ${default.stocks[0].zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudstoragegateway_get_stocks_get_stocks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStocksResult> getStocks(
  GetStocksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudstoragegateway/getStocks:getStocks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStocksResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_cloudstoragegateway_get_storage_bundles_get_storage_bundles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageBundlesResult> getStorageBundles(
  GetStorageBundlesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudstoragegateway/getStorageBundles:getStorageBundles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageBundlesResult.fromMap(result);
}
