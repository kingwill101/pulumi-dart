import 'package:pulumi/pulumi.dart' as pulumi;
import 'switch_das_pro_args.dart';
import 'switch_das_pro_state.dart';

/// Provides a DAS Switch Das Pro resource.
///
/// For information about DAS Switch Das Pro and how to use it, see [What is Switch Das Pro](https://www.alibabacloud.com/help/en/database-autonomy-service/latest/enabledaspro).
///
/// &gt; **NOTE:** Deprecated since v1.249.0.
///
/// &gt; **DEPRECATED:**  This resource has been deprecated from version `1.249.0`.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tfexample";
/// const _default = alicloud.getAccount({});
/// const defaultGetNodeClasses = alicloud.polardb.getNodeClasses({
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     payType: "PostPaid",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: defaultGetNodeClasses.then(defaultGetNodeClasses => defaultGetNodeClasses.classes?.[0]?.zoneId),
///     vswitchName: name,
/// });
/// const defaultCluster = new alicloud.polardb.Cluster("default", {
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     dbNodeClass: "polar.mysql.x4.large",
///     payType: "PostPaid",
///     vswitchId: defaultSwitch.id,
///     description: name,
///     dbClusterIpArrays: [{
///         dbClusterIpArrayName: "default",
///         securityIps: [
///             "1.2.3.4",
///             "1.2.3.5",
///         ],
///     }],
/// });
/// const defaultSwitchDasPro = new alicloud.das.SwitchDasPro("default", {
///     instanceId: defaultCluster.id,
///     sqlRetention: 30,
///     userId: _default.then(_default => _default.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// default = alicloud.get_account()
/// default_get_node_classes = alicloud.polardb.get_node_classes(db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default_get_node_classes.classes[0].zone_id,
///     vswitch_name=name)
/// default_cluster = alicloud.polardb.Cluster("default",
///     db_type="MySQL",
///     db_version="8.0",
///     db_node_class="polar.mysql.x4.large",
///     pay_type="PostPaid",
///     vswitch_id=default_switch.id,
///     description=name,
///     db_cluster_ip_arrays=[{
///         "db_cluster_ip_array_name": "default",
///         "security_ips": [
///             "1.2.3.4",
///             "1.2.3.5",
///         ],
///     }])
/// default_switch_das_pro = alicloud.das.SwitchDasPro("default",
///     instance_id=default_cluster.id,
///     sql_retention=30,
///     user_id=default.id)
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
///     var name = config.Get("name") ?? "tfexample";
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultGetNodeClasses = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = defaultGetNodeClasses.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId),
///         VswitchName = name,
///     });
///
///     var defaultCluster = new AliCloud.PolarDB.Cluster("default", new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         DbNodeClass = "polar.mysql.x4.large",
///         PayType = "PostPaid",
///         VswitchId = defaultSwitch.Id,
///         Description = name,
///         DbClusterIpArrays = new[]
///         {
///             new AliCloud.PolarDB.Inputs.ClusterDbClusterIpArrayArgs
///             {
///                 DbClusterIpArrayName = "default",
///                 SecurityIps = new[]
///                 {
///                     "1.2.3.4",
///                     "1.2.3.5",
///                 },
///             },
///         },
///     });
///
///     var defaultSwitchDasPro = new AliCloud.Das.SwitchDasPro("default", new()
///     {
///         InstanceId = defaultCluster.Id,
///         SqlRetention = 30,
///         UserId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/das"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNodeClasses, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// 			DbType:    pulumi.StringRef("MySQL"),
/// 			DbVersion: pulumi.StringRef("8.0"),
/// 			PayType:   "PostPaid",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(defaultGetNodeClasses.Classes[0].ZoneId),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCluster, err := polardb.NewCluster(ctx, "default", &polardb.ClusterArgs{
/// 			DbType:      pulumi.String("MySQL"),
/// 			DbVersion:   pulumi.String("8.0"),
/// 			DbNodeClass: pulumi.String("polar.mysql.x4.large"),
/// 			PayType:     pulumi.String("PostPaid"),
/// 			VswitchId:   defaultSwitch.ID(),
/// 			Description: pulumi.String(name),
/// 			DbClusterIpArrays: polardb.ClusterDbClusterIpArrayArray{
/// 				&polardb.ClusterDbClusterIpArrayArgs{
/// 					DbClusterIpArrayName: pulumi.String("default"),
/// 					SecurityIps: pulumi.StringArray{
/// 						pulumi.String("1.2.3.4"),
/// 						pulumi.String("1.2.3.5"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = das.NewSwitchDasPro(ctx, "default", &das.SwitchDasProArgs{
/// 			InstanceId:   defaultCluster.ID(),
/// 			SqlRetention: pulumi.Int(30),
/// 			UserId:       pulumi.String(_default.Id),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetNodeClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.polardb.Cluster;
/// import com.pulumi.alicloud.polardb.ClusterArgs;
/// import com.pulumi.alicloud.polardb.inputs.ClusterDbClusterIpArrayArgs;
/// import com.pulumi.alicloud.das.SwitchDasPro;
/// import com.pulumi.alicloud.das.SwitchDasProArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetNodeClasses = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(defaultGetNodeClasses.classes()[0].zoneId())
///             .vswitchName(name)
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .dbNodeClass("polar.mysql.x4.large")
///             .payType("PostPaid")
///             .vswitchId(defaultSwitch.id())
///             .description(name)
///             .dbClusterIpArrays(ClusterDbClusterIpArrayArgs.builder()
///                 .dbClusterIpArrayName("default")
///                 .securityIps(
///                     "1.2.3.4",
///                     "1.2.3.5")
///                 .build())
///             .build());
///
///         var defaultSwitchDasPro = new SwitchDasPro("defaultSwitchDasPro", SwitchDasProArgs.builder()
///             .instanceId(defaultCluster.id())
///             .sqlRetention(30)
///             .userId(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${defaultGetNodeClasses.classes[0].zoneId}
///       vswitchName: ${name}
///   defaultCluster:
///     type: alicloud:polardb:Cluster
///     name: default
///     properties:
///       dbType: MySQL
///       dbVersion: '8.0'
///       dbNodeClass: polar.mysql.x4.large
///       payType: PostPaid
///       vswitchId: ${defaultSwitch.id}
///       description: ${name}
///       dbClusterIpArrays:
///         - dbClusterIpArrayName: default
///           securityIps:
///             - 1.2.3.4
///             - 1.2.3.5
///   defaultSwitchDasPro:
///     type: alicloud:das:SwitchDasPro
///     name: default
///     properties:
///       instanceId: ${defaultCluster.id}
///       sqlRetention: 30
///       userId: ${default.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetNodeClasses:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         payType: PostPaid
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DAS Switch Das Pro can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:das/switchDasPro:SwitchDasPro example <id>
/// ```
class SwitchDasPro extends pulumi.CustomResource {
  /// The ID of the database instance.
  late final pulumi.Output<String> instanceId;
  /// The storage duration of SQL Explorer data. Valid values: `30`, `180`, `365`, `1095`, `1825`. Unit: days. Default value: `30`.
  late final pulumi.Output<int> sqlRetention;
  /// Whether the database instance has DAS professional.
  late final pulumi.Output<bool> status;
  /// The ID of the Alibaba Cloud account that is used to create the database instance.
  late final pulumi.Output<String> userId;

  /// Creates a new [SwitchDasPro].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SwitchDasPro]. {@macro pulumi_das_switch_das_pro_switch_das_pro_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SwitchDasPro(
    String name, {
    SwitchDasProArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:das/switchDasPro:SwitchDasPro',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    sqlRetention = registerOutput<int>('sqlRetention');
    status = registerOutput<bool>('status');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [SwitchDasPro] resource's state with the given [name] and [id].
  static SwitchDasPro get(
    String name,
    pulumi.Input<String> id, {
    SwitchDasProState? state,
  }) {
    return SwitchDasPro._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SwitchDasPro._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:das/switchDasPro:SwitchDasPro',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    sqlRetention = registerOutput<int>('sqlRetention');
    status = registerOutput<bool>('status');
    userId = registerOutput<String>('userId');
  }
}
