import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_database_network_args.dart';
import 'global_database_network_state.dart';

/// Provides a PolarDB Global Database Network resource.
///
/// For information about PolarDB Global Database Network and how to use it, see [What is Global Database Network](https://www.alibabacloud.com/help/en/polardb/api-polardb-2017-08-01-createglobaldatabasenetwork).
///
/// &gt; **NOTE:** Available since v1.181.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.polardb.getNodeClasses({
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     category: "Normal",
///     payType: "PostPaid",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.classes?.[0]?.zoneId),
///     vswitchName: "terraform-example",
/// });
/// const defaultCluster = new alicloud.polardb.Cluster("default", {
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     dbNodeClass: _default.then(_default => _default.classes?.[0]?.supportedEngines?.[0]?.availableResources?.[0]?.dbNodeClass),
///     payType: "PostPaid",
///     vswitchId: defaultSwitch.id,
///     description: "terraform-example",
/// });
/// const defaultGlobalDatabaseNetwork = new alicloud.polardb.GlobalDatabaseNetwork("default", {
///     dbClusterId: defaultCluster.id,
///     description: "terraform-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.polardb.get_node_classes(db_type="MySQL",
///     db_version="8.0",
///     category="Normal",
///     pay_type="PostPaid")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.classes[0].zone_id,
///     vswitch_name="terraform-example")
/// default_cluster = alicloud.polardb.Cluster("default",
///     db_type="MySQL",
///     db_version="8.0",
///     db_node_class=default.classes[0].supported_engines[0].available_resources[0].db_node_class,
///     pay_type="PostPaid",
///     vswitch_id=default_switch.id,
///     description="terraform-example")
/// default_global_database_network = alicloud.polardb.GlobalDatabaseNetwork("default",
///     db_cluster_id=default_cluster.id,
///     description="terraform-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         Category = "Normal",
///         PayType = "PostPaid",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId)),
///         VswitchName = "terraform-example",
///     });
///
///     var defaultCluster = new AliCloud.PolarDB.Cluster("default", new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         DbNodeClass = @default.Apply(@default => @default.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.SupportedEngines[0]?.AvailableResources[0]?.DbNodeClass)),
///         PayType = "PostPaid",
///         VswitchId = defaultSwitch.Id,
///         Description = "terraform-example",
///     });
///
///     var defaultGlobalDatabaseNetwork = new AliCloud.PolarDB.GlobalDatabaseNetwork("default", new()
///     {
///         DbClusterId = defaultCluster.Id,
///         Description = "terraform-example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// 			DbType:    pulumi.StringRef("MySQL"),
/// 			DbVersion: pulumi.StringRef("8.0"),
/// 			Category:  pulumi.StringRef("Normal"),
/// 			PayType:   "PostPaid",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Classes[0].ZoneId),
/// 			VswitchName: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCluster, err := polardb.NewCluster(ctx, "default", &polardb.ClusterArgs{
/// 			DbType:      pulumi.String("MySQL"),
/// 			DbVersion:   pulumi.String("8.0"),
/// 			DbNodeClass: pulumi.String(_default.Classes[0].SupportedEngines[0].AvailableResources[0].DbNodeClass),
/// 			PayType:     pulumi.String("PostPaid"),
/// 			VswitchId:   defaultSwitch.ID(),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = polardb.NewGlobalDatabaseNetwork(ctx, "default", &polardb.GlobalDatabaseNetworkArgs{
/// 			DbClusterId: defaultCluster.ID(),
/// 			Description: pulumi.String("terraform-example"),
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
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetNodeClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.polardb.Cluster;
/// import com.pulumi.alicloud.polardb.ClusterArgs;
/// import com.pulumi.alicloud.polardb.GlobalDatabaseNetwork;
/// import com.pulumi.alicloud.polardb.GlobalDatabaseNetworkArgs;
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
///         final var default = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .category("Normal")
///             .payType("PostPaid")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.classes()[0].zoneId())
///             .vswitchName("terraform-example")
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .dbNodeClass(default_.classes()[0].supportedEngines()[0].availableResources()[0].dbNodeClass())
///             .payType("PostPaid")
///             .vswitchId(defaultSwitch.id())
///             .description("terraform-example")
///             .build());
///
///         var defaultGlobalDatabaseNetwork = new GlobalDatabaseNetwork("defaultGlobalDatabaseNetwork", GlobalDatabaseNetworkArgs.builder()
///             .dbClusterId(defaultCluster.id())
///             .description("terraform-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.classes[0].zoneId}
///       vswitchName: terraform-example
///   defaultCluster:
///     type: alicloud:polardb:Cluster
///     name: default
///     properties:
///       dbType: MySQL
///       dbVersion: '8.0'
///       dbNodeClass: ${default.classes[0].supportedEngines[0].availableResources[0].dbNodeClass}
///       payType: PostPaid
///       vswitchId: ${defaultSwitch.id}
///       description: terraform-example
///   defaultGlobalDatabaseNetwork:
///     type: alicloud:polardb:GlobalDatabaseNetwork
///     name: default
///     properties:
///       dbClusterId: ${defaultCluster.id}
///       description: terraform-example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         category: Normal
///         payType: PostPaid
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PolarDB Global Database Network can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/globalDatabaseNetwork:GlobalDatabaseNetwork example <id>
/// ```
class GlobalDatabaseNetwork extends pulumi.CustomResource {
  /// The ID of the primary cluster.
  late final pulumi.Output<String> dbClusterId;

  /// The description of the Global Database Network.
  late final pulumi.Output<String> description;

  /// The status of the Global Database Network.
  late final pulumi.Output<String> status;

  /// Creates a new [GlobalDatabaseNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalDatabaseNetwork]. {@macro pulumi_polardb_global_database_network_global_database_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalDatabaseNetwork(
    String name, {
    GlobalDatabaseNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:polardb/globalDatabaseNetwork:GlobalDatabaseNetwork',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dbClusterId = registerOutput<String>('dbClusterId');
    description = registerOutput<String>('description');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [GlobalDatabaseNetwork] resource's state with the given [name] and [id].
  static GlobalDatabaseNetwork get(
    String name,
    pulumi.Input<String> id, {
    GlobalDatabaseNetworkState? state,
  }) {
    return GlobalDatabaseNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalDatabaseNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:polardb/globalDatabaseNetwork:GlobalDatabaseNetwork',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dbClusterId = registerOutput<String>('dbClusterId');
    description = registerOutput<String>('description');
    status = registerOutput<String>('status');
  }
}
