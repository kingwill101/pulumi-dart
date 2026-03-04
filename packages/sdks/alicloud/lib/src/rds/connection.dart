import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';

/// Provides an RDS connection resource to allocate an Internet connection string for RDS instance, see [What is DB Connection](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/api-rds-2014-08-15-allocateinstancepublicconnection).
///
/// &gt; **NOTE:** Each RDS instance will allocate a intranet connnection string automatically and its prifix is RDS instance ID.
/// To avoid unnecessary conflict, please specified a internet connection prefix before applying the resource.
///
/// &gt; **NOTE:** Available since v1.5.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "5.6",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultInstance = new alicloud.rds.Instance("default", {
///     engine: "MySQL",
///     engineVersion: "5.6",
///     instanceType: "rds.mysql.t1.small",
///     instanceStorage: 10,
///     vswitchId: defaultSwitch.id,
///     instanceName: name,
/// });
/// const defaultConnection = new alicloud.rds.Connection("default", {
///     instanceId: defaultInstance.id,
///     connectionPrefix: "testabc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="5.6")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_instance = alicloud.rds.Instance("default",
///     engine="MySQL",
///     engine_version="5.6",
///     instance_type="rds.mysql.t1.small",
///     instance_storage=10,
///     vswitch_id=default_switch.id,
///     instance_name=name)
/// default_connection = alicloud.rds.Connection("default",
///     instance_id=default_instance.id,
///     connection_prefix="testabc")
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultInstance = new AliCloud.Rds.Instance("default", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///         InstanceType = "rds.mysql.t1.small",
///         InstanceStorage = 10,
///         VswitchId = defaultSwitch.Id,
///         InstanceName = name,
///     });
///
///     var defaultConnection = new AliCloud.Rds.Connection("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         ConnectionPrefix = "testabc",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:        pulumi.StringRef("MySQL"),
/// 			EngineVersion: pulumi.StringRef("5.6"),
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
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			Engine:          pulumi.String("MySQL"),
/// 			EngineVersion:   pulumi.String("5.6"),
/// 			InstanceType:    pulumi.String("rds.mysql.t1.small"),
/// 			InstanceStorage: pulumi.Int(10),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			InstanceName:    pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewConnection(ctx, "default", &rds.ConnectionArgs{
/// 			InstanceId:       defaultInstance.ID(),
/// 			ConnectionPrefix: pulumi.String("testabc"),
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.Connection;
/// import com.pulumi.alicloud.rds.ConnectionArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
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
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .instanceType("rds.mysql.t1.small")
///             .instanceStorage(10)
///             .vswitchId(defaultSwitch.id())
///             .instanceName(name)
///             .build());
///
///         var defaultConnection = new Connection("defaultConnection", ConnectionArgs.builder()
///             .instanceId(defaultInstance.id())
///             .connectionPrefix("testabc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
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
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultInstance:
///     type: alicloud:rds:Instance
///     name: default
///     properties:
///       engine: MySQL
///       engineVersion: '5.6'
///       instanceType: rds.mysql.t1.small
///       instanceStorage: '10'
///       vswitchId: ${defaultSwitch.id}
///       instanceName: ${name}
///   defaultConnection:
///     type: alicloud:rds:Connection
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       connectionPrefix: testabc
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '5.6'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/connection:Connection example abc12345678
/// ```
class Connection extends pulumi.CustomResource {
  /// The Tabular Data Stream (TDS) port of the instance for which Babelfish is enabled.
  ///
  /// &gt; **NOTE:** This parameter applies only to ApsaraDB RDS for PostgreSQL instances. For more information about Babelfish for ApsaraDB RDS for PostgreSQL, see [Introduction to Babelfish](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/babelfish-for-pg).
  late final pulumi.Output<String> babelfishPort;

  /// Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 40 characters. Default to &lt;instance_id&gt; + 'tf'.
  late final pulumi.Output<String> connectionPrefix;

  /// Connection instance string.
  late final pulumi.Output<String> connectionString;

  /// The Id of instance that can run database.
  late final pulumi.Output<String> instanceId;

  /// The ip address of connection string.
  late final pulumi.Output<String> ipAddress;

  /// Internet connection port. Valid value: [1000-5999]. Default to 3306.
  late final pulumi.Output<String?> port;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_rds_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rds/connection:Connection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    babelfishPort = registerOutput<String>('babelfishPort');
    connectionPrefix = registerOutput<String>('connectionPrefix');
    connectionString = registerOutput<String>('connectionString');
    instanceId = registerOutput<String>('instanceId');
    ipAddress = registerOutput<String>('ipAddress');
    port = registerOutput<String?>('port');
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
         'alicloud:rds/connection:Connection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    babelfishPort = registerOutput<String>('babelfishPort');
    connectionPrefix = registerOutput<String>('connectionPrefix');
    connectionString = registerOutput<String>('connectionString');
    instanceId = registerOutput<String>('instanceId');
    ipAddress = registerOutput<String>('ipAddress');
    port = registerOutput<String?>('port');
  }
}
