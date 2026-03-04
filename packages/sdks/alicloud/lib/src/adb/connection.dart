import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';

/// Provides an ADB connection resource to allocate an Internet connection string for ADB cluster.
///
/// &gt; **NOTE:** Each ADB instance will allocate a intranet connnection string automatically and its prifix is ADB instance ID.
/// To avoid unnecessary conflict, please specified a internet connection prefix before applying the resource.
///
/// &gt; **NOTE:** Available since v1.81.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.adb.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[0],
/// }));
/// const vswitchId = defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]);
/// const cluster = new alicloud.adb.DBCluster("cluster", {
///     dbClusterCategory: "MixedStorage",
///     mode: "flexible",
///     computeResource: "8Core32GB",
///     vswitchId: vswitchId,
///     description: name,
/// });
/// const defaultConnection = new alicloud.adb.Connection("default", {
///     dbClusterId: cluster.id,
///     connectionPrefix: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.adb.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[0])
/// vswitch_id = default_get_switches.ids[0]
/// cluster = alicloud.adb.DBCluster("cluster",
///     db_cluster_category="MixedStorage",
///     mode="flexible",
///     compute_resource="8Core32GB",
///     vswitch_id=vswitch_id,
///     description=name)
/// default_connection = alicloud.adb.Connection("default",
///     db_cluster_id=cluster.id,
///     connection_prefix="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.Adb.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///     });
///
///     var vswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]);
///
///     var cluster = new AliCloud.Adb.DBCluster("cluster", new()
///     {
///         DbClusterCategory = "MixedStorage",
///         Mode = "flexible",
///         ComputeResource = "8Core32GB",
///         VswitchId = vswitchId,
///         Description = name,
///     });
///
///     var defaultConnection = new AliCloud.Adb.Connection("default", new()
///     {
///         DbClusterId = cluster.Id,
///         ConnectionPrefix = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := adb.GetZones(ctx, &adb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitchId := defaultGetSwitches.Ids[0]
/// 		cluster, err := adb.NewDBCluster(ctx, "cluster", &adb.DBClusterArgs{
/// 			DbClusterCategory: pulumi.String("MixedStorage"),
/// 			Mode:              pulumi.String("flexible"),
/// 			ComputeResource:   pulumi.String("8Core32GB"),
/// 			VswitchId:         pulumi.String(vswitchId),
/// 			Description:       pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = adb.NewConnection(ctx, "default", &adb.ConnectionArgs{
/// 			DbClusterId:      cluster.ID(),
/// 			ConnectionPrefix: pulumi.String("example"),
/// 		})
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
/// import com.pulumi.alicloud.adb.AdbFunctions;
/// import com.pulumi.alicloud.adb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.adb.DBCluster;
/// import com.pulumi.alicloud.adb.DBClusterArgs;
/// import com.pulumi.alicloud.adb.Connection;
/// import com.pulumi.alicloud.adb.ConnectionArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.ids()[0])
///             .build());
///
///         final var vswitchId = defaultGetSwitches.ids()[0];
///
///         var cluster = new DBCluster("cluster", DBClusterArgs.builder()
///             .dbClusterCategory("MixedStorage")
///             .mode("flexible")
///             .computeResource("8Core32GB")
///             .vswitchId(vswitchId)
///             .description(name)
///             .build());
///
///         var defaultConnection = new Connection("defaultConnection", ConnectionArgs.builder()
///             .dbClusterId(cluster.id())
///             .connectionPrefix("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   cluster:
///     type: alicloud:adb:DBCluster
///     properties:
///       dbClusterCategory: MixedStorage
///       mode: flexible
///       computeResource: 8Core32GB
///       vswitchId: ${vswitchId}
///       description: ${name}
///   defaultConnection:
///     type: alicloud:adb:Connection
///     name: default
///     properties:
///       dbClusterId: ${cluster.id}
///       connectionPrefix: example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:adb:getZones
///       arguments: {}
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.ids[0]}
///   vswitchId: ${defaultGetSwitches.ids[0]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ADB connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:adb/connection:Connection example am-12345678
/// ```
class Connection extends pulumi.CustomResource {
  /// Prefix of the cluster public endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter. Default to `&lt;db_cluster_id&gt; + tf`.
  late final pulumi.Output<String> connectionPrefix;

  /// Connection cluster string.
  late final pulumi.Output<String> connectionString;

  /// The Id of cluster that can run database.
  late final pulumi.Output<String> dbClusterId;

  /// The ip address of connection string.
  late final pulumi.Output<String> ipAddress;

  /// Connection cluster port.
  late final pulumi.Output<String> port;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_adb_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:adb/connection:Connection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionPrefix = registerOutput<String>('connectionPrefix');
    connectionString = registerOutput<String>('connectionString');
    dbClusterId = registerOutput<String>('dbClusterId');
    ipAddress = registerOutput<String>('ipAddress');
    port = registerOutput<String>('port');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:adb/connection:Connection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionPrefix = registerOutput<String>('connectionPrefix');
    connectionString = registerOutput<String>('connectionString');
    dbClusterId = registerOutput<String>('dbClusterId');
    ipAddress = registerOutput<String>('ipAddress');
    port = registerOutput<String>('port');
  }
}
