import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_args.dart';
import 'get_accounts_result.dart';
import 'get_connections_args.dart';
import 'get_connections_result.dart';
import 'get_instance_classes_args.dart';
import 'get_instance_classes_result.dart';
import 'get_instance_engines_args.dart';
import 'get_instance_engines_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_permission_args.dart';
import 'get_permission_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Tair (Redis OSS-Compatible) And Memcache (KVStore) Accounts of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.102.0+.
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
/// const example = alicloud.kvstore.getAccounts({
///     instanceId: "example_value",
/// });
/// export const firstKvstoreAccountId = example.then(example => example.accounts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.kvstore.get_accounts(instance_id="example_value")
/// pulumi.export("firstKvstoreAccountId", example.accounts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.KVStore.GetAccounts.Invoke(new()
///     {
///         InstanceId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstKvstoreAccountId"] = example.Apply(getAccountsResult => getAccountsResult.Accounts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kvstore.GetAccounts(ctx, &kvstore.GetAccountsArgs{
/// 			InstanceId: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstKvstoreAccountId", example.Accounts[0].Id)
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
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetAccountsArgs;
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
///         final var example = KvstoreFunctions.getAccounts(GetAccountsArgs.builder()
///             .instanceId("example_value")
///             .build());
///
///         ctx.export("firstKvstoreAccountId", example.accounts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:kvstore:getAccounts
///       arguments:
///         instanceId: example_value
/// outputs:
///   firstKvstoreAccountId: ${example.accounts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kvstore_get_accounts_get_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountsResult> getAccounts(
  GetAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kvstore/getAccounts:getAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountsResult.fromMap(result);
}

/// This data source can query the public IP of the specified Tair (Redis OSS-Compatible) And Memcache (KVStore).
///
/// &gt; **NOTE:** Available in v1.101.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const example = alicloud.kvstore.getConnections({
///     ids: "r-wer123456",
/// });
/// export const connectionString = example.then(example => example.connections?.[0]?.connectionString);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// example = alicloud.kvstore.get_connections(ids="r-wer123456")
/// pulumi.export("connectionString", example.connections[0].connection_string)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var example = AliCloud.KVStore.GetConnections.Invoke(new()
///     {
///         Ids = "r-wer123456",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["connectionString"] = example.Apply(getConnectionsResult => getConnectionsResult.Connections[0]?.ConnectionString),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		example, err := kvstore.GetConnections(ctx, &kvstore.GetConnectionsArgs{
/// 			Ids: "r-wer123456",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("connectionString", example.Connections[0].ConnectionString)
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
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetConnectionsArgs;
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
///         // Declare the data source
///         final var example = KvstoreFunctions.getConnections(GetConnectionsArgs.builder()
///             .ids("r-wer123456")
///             .build());
///
///         ctx.export("connectionString", example.connections()[0].connectionString());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   example:
///     fn::invoke:
///       function: alicloud:kvstore:getConnections
///       arguments:
///         ids: r-wer123456
/// outputs:
///   connectionString: ${example.connections[0].connectionString}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kvstore_get_connections_get_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionsResult> getConnections(
  GetConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kvstore/getConnections:getConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionsResult.fromMap(result);
}

/// This data source provides the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance classes resource available info of Alibaba Cloud.
///
/// &gt; **NOTE:** Available since v1.49.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const resources = alicloud.getZones({
///     availableResourceCreation: "KVStore",
/// });
/// const resourcesGetInstanceClasses = resources.then(resources => alicloud.kvstore.getInstanceClasses({
///     zoneId: resources.zones?.[0]?.id,
///     instanceChargeType: "PrePaid",
///     engine: "Redis",
///     engineVersion: "5.0",
///     outputFile: "./classes.txt",
/// }));
/// export const firstKvstoreInstanceClass = resourcesGetInstanceClasses.then(resourcesGetInstanceClasses => resourcesGetInstanceClasses.instanceClasses);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// resources = alicloud.get_zones(available_resource_creation="KVStore")
/// resources_get_instance_classes = alicloud.kvstore.get_instance_classes(zone_id=resources.zones[0].id,
///     instance_charge_type="PrePaid",
///     engine="Redis",
///     engine_version="5.0",
///     output_file="./classes.txt")
/// pulumi.export("firstKvstoreInstanceClass", resources_get_instance_classes.instance_classes)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resources = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "KVStore",
///     });
///
///     var resourcesGetInstanceClasses = AliCloud.KVStore.GetInstanceClasses.Invoke(new()
///     {
///         ZoneId = resources.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceChargeType = "PrePaid",
///         Engine = "Redis",
///         EngineVersion = "5.0",
///         OutputFile = "./classes.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstKvstoreInstanceClass"] = resourcesGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		resources, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("KVStore"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		resourcesGetInstanceClasses, err := kvstore.GetInstanceClasses(ctx, &kvstore.GetInstanceClassesArgs{
/// 			ZoneId:             resources.Zones[0].Id,
/// 			InstanceChargeType: pulumi.StringRef("PrePaid"),
/// 			Engine:             pulumi.StringRef("Redis"),
/// 			EngineVersion:      pulumi.StringRef("5.0"),
/// 			OutputFile:         pulumi.StringRef("./classes.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstKvstoreInstanceClass", resourcesGetInstanceClasses.InstanceClasses)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetInstanceClassesArgs;
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
///         final var resources = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("KVStore")
///             .build());
///
///         final var resourcesGetInstanceClasses = KvstoreFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .zoneId(resources.zones()[0].id())
///             .instanceChargeType("PrePaid")
///             .engine("Redis")
///             .engineVersion("5.0")
///             .outputFile("./classes.txt")
///             .build());
///
///         ctx.export("firstKvstoreInstanceClass", resourcesGetInstanceClasses.instanceClasses());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   resources:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: KVStore
///   resourcesGetInstanceClasses:
///     fn::invoke:
///       function: alicloud:kvstore:getInstanceClasses
///       arguments:
///         zoneId: ${resources.zones[0].id}
///         instanceChargeType: PrePaid
///         engine: Redis
///         engineVersion: '5.0'
///         outputFile: ./classes.txt
/// outputs:
///   firstKvstoreInstanceClass: ${resourcesGetInstanceClasses.instanceClasses}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kvstore_get_instance_classes_get_instance_classes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceClassesResult> getInstanceClasses(
  GetInstanceClassesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kvstore/getInstanceClasses:getInstanceClasses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceClassesResult.fromMap(result);
}

/// This data source provides the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance engines resource available info of Alibaba Cloud.
///
/// &gt; **NOTE:** Available since v1.51.0
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const resources = alicloud.getZones({
///     availableResourceCreation: "KVStore",
/// });
/// const resourcesGetInstanceEngines = resources.then(resources => alicloud.kvstore.getInstanceEngines({
///     zoneId: resources.zones?.[0]?.id,
///     instanceChargeType: "PrePaid",
///     engine: "Redis",
///     engineVersion: "5.0",
///     outputFile: "./engines.txt",
/// }));
/// export const firstKvstoreInstanceClass = resourcesGetInstanceEngines.then(resourcesGetInstanceEngines => resourcesGetInstanceEngines.instanceEngines?.[0]?.engine);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// resources = alicloud.get_zones(available_resource_creation="KVStore")
/// resources_get_instance_engines = alicloud.kvstore.get_instance_engines(zone_id=resources.zones[0].id,
///     instance_charge_type="PrePaid",
///     engine="Redis",
///     engine_version="5.0",
///     output_file="./engines.txt")
/// pulumi.export("firstKvstoreInstanceClass", resources_get_instance_engines.instance_engines[0].engine)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resources = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "KVStore",
///     });
///
///     var resourcesGetInstanceEngines = AliCloud.KVStore.GetInstanceEngines.Invoke(new()
///     {
///         ZoneId = resources.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceChargeType = "PrePaid",
///         Engine = "Redis",
///         EngineVersion = "5.0",
///         OutputFile = "./engines.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstKvstoreInstanceClass"] = resourcesGetInstanceEngines.Apply(getInstanceEnginesResult => getInstanceEnginesResult.InstanceEngines[0]?.Engine),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		resources, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("KVStore"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		resourcesGetInstanceEngines, err := kvstore.GetInstanceEngines(ctx, &kvstore.GetInstanceEnginesArgs{
/// 			ZoneId:             resources.Zones[0].Id,
/// 			InstanceChargeType: pulumi.StringRef("PrePaid"),
/// 			Engine:             pulumi.StringRef("Redis"),
/// 			EngineVersion:      pulumi.StringRef("5.0"),
/// 			OutputFile:         pulumi.StringRef("./engines.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstKvstoreInstanceClass", resourcesGetInstanceEngines.InstanceEngines[0].Engine)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetInstanceEnginesArgs;
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
///         final var resources = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("KVStore")
///             .build());
///
///         final var resourcesGetInstanceEngines = KvstoreFunctions.getInstanceEngines(GetInstanceEnginesArgs.builder()
///             .zoneId(resources.zones()[0].id())
///             .instanceChargeType("PrePaid")
///             .engine("Redis")
///             .engineVersion("5.0")
///             .outputFile("./engines.txt")
///             .build());
///
///         ctx.export("firstKvstoreInstanceClass", resourcesGetInstanceEngines.instanceEngines()[0].engine());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   resources:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: KVStore
///   resourcesGetInstanceEngines:
///     fn::invoke:
///       function: alicloud:kvstore:getInstanceEngines
///       arguments:
///         zoneId: ${resources.zones[0].id}
///         instanceChargeType: PrePaid
///         engine: Redis
///         engineVersion: '5.0'
///         outputFile: ./engines.txt
/// outputs:
///   firstKvstoreInstanceClass: ${resourcesGetInstanceEngines.instanceEngines[0].engine}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kvstore_get_instance_engines_get_instance_engines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceEnginesResult> getInstanceEngines(
  GetInstanceEnginesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kvstore/getInstanceEngines:getInstanceEngines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceEnginesResult.fromMap(result);
}

/// This data source provides the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.15.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.kvstore.getInstances({
///     nameRegex: "testname",
/// });
/// export const firstInstanceName = _default.then(_default => _default.instances?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.kvstore.get_instances(name_regex="testname")
/// pulumi.export("firstInstanceName", default.instances[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.KVStore.GetInstances.Invoke(new()
///     {
///         NameRegex = "testname",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceName"] = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Name)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := kvstore.GetInstances(ctx, &kvstore.GetInstancesArgs{
/// 			NameRegex: pulumi.StringRef("testname"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstInstanceName", _default.Instances[0].Name)
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
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetInstancesArgs;
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
///         final var default = KvstoreFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("testname")
///             .build());
///
///         ctx.export("firstInstanceName", default_.instances()[0].name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:kvstore:getInstances
///       arguments:
///         nameRegex: testname
/// outputs:
///   firstInstanceName: ${default.instances[0].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kvstore_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kvstore/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// Assigns a RAM role to Tair (Redis OSS-Compatible) And Memcache (KVStore).
///
/// The log management feature of Tair (Redis OSS-Compatible) And Memcache (KVStore) requires the resources of [Log Service](https://www.alibabacloud.com/help/doc-detail/48869.htm).
/// To use the log management feature of Tair (Redis OSS-Compatible) And Memcache (KVStore), you can call this operation to associate the RAM role named AliyunServiceRoleForKvstore with the Tair (Redis OSS-Compatible) And Memcache (KVStore) instance.
/// For more information, see [Associated RAM roles of Tair (Redis OSS-Compatible) And Memcache (KVStore)](https://www.alibabacloud.com/help/doc-detail/184337.htm)
///
/// &gt; **NOTE:** Available since v1.128.0
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.kvstore.getPermission({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.kvstore.get_permission(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.KVStore.GetPermission.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kvstore.GetPermission(ctx, &kvstore.GetPermissionArgs{
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
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetPermissionArgs;
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
///         final var open = KvstoreFunctions.getPermission(GetPermissionArgs.builder()
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
///       function: alicloud:kvstore:getPermission
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kvstore_get_permission_get_permission_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPermissionResult> getPermission(
  GetPermissionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kvstore/getPermission:getPermission',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPermissionResult.fromMap(result);
}

/// This data source provides availability zones for Tair (Redis OSS-Compatible) And Memcache (KVStore) that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// &gt; **NOTE:** Available since v1.73.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const zonesIds = alicloud.kvstore.getZones({
///     instanceChargeType: "PostPaid",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// zones_ids = alicloud.kvstore.get_zones(instance_charge_type="PostPaid")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var zonesIds = AliCloud.KVStore.GetZones.Invoke(new()
///     {
///         InstanceChargeType = "PostPaid",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		_, err := kvstore.GetZones(ctx, &kvstore.GetZonesArgs{
/// 			InstanceChargeType: pulumi.StringRef("PostPaid"),
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
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetZonesArgs;
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
///         // Declare the data source
///         final var zonesIds = KvstoreFunctions.getZones(GetZonesArgs.builder()
///             .instanceChargeType("PostPaid")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   zonesIds:
///     fn::invoke:
///       function: alicloud:kvstore:getZones
///       arguments:
///         instanceChargeType: PostPaid
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kvstore_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:kvstore/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
