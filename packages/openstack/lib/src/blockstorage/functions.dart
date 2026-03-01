import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_zones_v3_args.dart';
import 'get_availability_zones_v3_result.dart';
import 'get_quotaset_v3_args.dart';
import 'get_quotaset_v3_result.dart';
import 'get_snapshot_v3_args.dart';
import 'get_snapshot_v3_result.dart';
import 'get_volume_v3_args.dart';
import 'get_volume_v3_result.dart';

/// Use this data source to get a list of Block Storage availability zones from OpenStack
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const zones = openstack.blockstorage.getAvailabilityZonesV3({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// zones = openstack.blockstorage.get_availability_zones_v3()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zones = OpenStack.BlockStorage.GetAvailabilityZonesV3.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockstorage.GetAvailabilityZonesV3(ctx, &blockstorage.GetAvailabilityZonesV3Args{}, nil)
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
/// import com.pulumi.openstack.blockstorage.BlockstorageFunctions;
/// import com.pulumi.openstack.blockstorage.inputs.GetAvailabilityZonesV3Args;
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
///         final var zones = BlockstorageFunctions.getAvailabilityZonesV3(GetAvailabilityZonesV3Args.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   zones:
///     fn::invoke:
///       function: openstack:blockstorage:getAvailabilityZonesV3
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_blockstorage_get_availability_zones_v3_get_availability_zones_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvailabilityZonesV3Result> getAvailabilityZonesV3(
  GetAvailabilityZonesV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:blockstorage/getAvailabilityZonesV3:getAvailabilityZonesV3',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvailabilityZonesV3Result.fromMap(result);
}

/// Use this data source to get the blockstorage quotaset v3 of an OpenStack project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const quota = openstack.blockstorage.getQuotasetV3({
///     projectId: "2e367a3d29f94fd988e6ec54e305ec9d",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// quota = openstack.blockstorage.get_quotaset_v3(project_id="2e367a3d29f94fd988e6ec54e305ec9d")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var quota = OpenStack.BlockStorage.GetQuotasetV3.Invoke(new()
///     {
///         ProjectId = "2e367a3d29f94fd988e6ec54e305ec9d",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockstorage.GetQuotasetV3(ctx, &blockstorage.GetQuotasetV3Args{
/// 			ProjectId: "2e367a3d29f94fd988e6ec54e305ec9d",
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
/// import com.pulumi.openstack.blockstorage.BlockstorageFunctions;
/// import com.pulumi.openstack.blockstorage.inputs.GetQuotasetV3Args;
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
///         final var quota = BlockstorageFunctions.getQuotasetV3(GetQuotasetV3Args.builder()
///             .projectId("2e367a3d29f94fd988e6ec54e305ec9d")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   quota:
///     fn::invoke:
///       function: openstack:blockstorage:getQuotasetV3
///       arguments:
///         projectId: 2e367a3d29f94fd988e6ec54e305ec9d
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_blockstorage_get_quotaset_v3_get_quotaset_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuotasetV3Result> getQuotasetV3(
  GetQuotasetV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:blockstorage/getQuotasetV3:getQuotasetV3',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuotasetV3Result.fromMap(result);
}

/// Use this data source to get information about an existing snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const snapshot1 = openstack.blockstorage.getSnapshotV3({
///     name: "snapshot_1",
///     mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// snapshot1 = openstack.blockstorage.get_snapshot_v3(name="snapshot_1",
///     most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot1 = OpenStack.BlockStorage.GetSnapshotV3.Invoke(new()
///     {
///         Name = "snapshot_1",
///         MostRecent = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockstorage.GetSnapshotV3(ctx, &blockstorage.GetSnapshotV3Args{
/// 			Name:       pulumi.StringRef("snapshot_1"),
/// 			MostRecent: pulumi.BoolRef(true),
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
/// import com.pulumi.openstack.blockstorage.BlockstorageFunctions;
/// import com.pulumi.openstack.blockstorage.inputs.GetSnapshotV3Args;
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
///         final var snapshot1 = BlockstorageFunctions.getSnapshotV3(GetSnapshotV3Args.builder()
///             .name("snapshot_1")
///             .mostRecent(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   snapshot1:
///     fn::invoke:
///       function: openstack:blockstorage:getSnapshotV3
///       arguments:
///         name: snapshot_1
///         mostRecent: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_blockstorage_get_snapshot_v3_get_snapshot_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotV3Result> getSnapshotV3(
  GetSnapshotV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:blockstorage/getSnapshotV3:getSnapshotV3',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotV3Result.fromMap(result);
}

/// Use this data source to get information about an existing volume.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const volume1 = openstack.blockstorage.getVolumeV3({
///     name: "volume_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// volume1 = openstack.blockstorage.get_volume_v3(name="volume_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volume1 = OpenStack.BlockStorage.GetVolumeV3.Invoke(new()
///     {
///         Name = "volume_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockstorage.GetVolumeV3(ctx, &blockstorage.GetVolumeV3Args{
/// 			Name: pulumi.StringRef("volume_1"),
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
/// import com.pulumi.openstack.blockstorage.BlockstorageFunctions;
/// import com.pulumi.openstack.blockstorage.inputs.GetVolumeV3Args;
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
///         final var volume1 = BlockstorageFunctions.getVolumeV3(GetVolumeV3Args.builder()
///             .name("volume_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   volume1:
///     fn::invoke:
///       function: openstack:blockstorage:getVolumeV3
///       arguments:
///         name: volume_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_blockstorage_get_volume_v3_get_volume_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeV3Result> getVolumeV3(
  GetVolumeV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:blockstorage/getVolumeV3:getVolumeV3',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeV3Result.fromMap(result);
}
