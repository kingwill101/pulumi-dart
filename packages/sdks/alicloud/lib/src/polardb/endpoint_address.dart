import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_address_args.dart';
import 'endpoint_address_state.dart';

/// Provides a PolarDB endpoint address resource to allocate an Internet endpoint address string for PolarDB instance.
///
/// &gt; **NOTE:** Available since v1.68.0. Each PolarDB instance will allocate a intranet connection string automatically and its prefix is Cluster ID.
/// To avoid unnecessary conflict, please specified a internet connection prefix before applying the resource.
///
/// ## Example Usage
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
///     payType: "PostPaid",
///     category: "Normal",
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
/// const defaultGetEndpoints = alicloud.polardb.getEndpointsOutput({
///     dbClusterId: defaultCluster.id,
/// });
/// const defaultEndpointAddress = new alicloud.polardb.EndpointAddress("default", {
///     dbClusterId: defaultCluster.id,
///     dbEndpointId: defaultGetEndpoints.apply(defaultGetEndpoints => defaultGetEndpoints.endpoints?.[0]?.dbEndpointId),
///     connectionPrefix: "polardbexample",
///     netType: "Public",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.polardb.get_node_classes(db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     category="Normal")
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
/// default_get_endpoints = alicloud.polardb.get_endpoints_output(db_cluster_id=default_cluster.id)
/// default_endpoint_address = alicloud.polardb.EndpointAddress("default",
///     db_cluster_id=default_cluster.id,
///     db_endpoint_id=default_get_endpoints.endpoints[0].db_endpoint_id,
///     connection_prefix="polardbexample",
///     net_type="Public")
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
///         PayType = "PostPaid",
///         Category = "Normal",
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
///     var defaultGetEndpoints = AliCloud.PolarDB.GetEndpoints.Invoke(new()
///     {
///         DbClusterId = defaultCluster.Id,
///     });
///
///     var defaultEndpointAddress = new AliCloud.PolarDB.EndpointAddress("default", new()
///     {
///         DbClusterId = defaultCluster.Id,
///         DbEndpointId = defaultGetEndpoints.Apply(getEndpointsResult => getEndpointsResult.Endpoints[0]?.DbEndpointId),
///         ConnectionPrefix = "polardbexample",
///         NetType = "Public",
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
/// 			PayType:   "PostPaid",
/// 			Category:  pulumi.StringRef("Normal"),
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
/// 		defaultGetEndpoints := polardb.GetEndpointsOutput(ctx, polardb.GetEndpointsOutputArgs{
/// 			DbClusterId: defaultCluster.ID(),
/// 		}, nil)
/// 		_, err = polardb.NewEndpointAddress(ctx, "default", &polardb.EndpointAddressArgs{
/// 			DbClusterId: defaultCluster.ID(),
/// 			DbEndpointId: pulumi.String(defaultGetEndpoints.ApplyT(func(defaultGetEndpoints polardb.GetEndpointsResult) (*string, error) {
/// 				return &defaultGetEndpoints.Endpoints[0].DbEndpointId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ConnectionPrefix: pulumi.String("polardbexample"),
/// 			NetType:          pulumi.String("Public"),
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
/// import com.pulumi.alicloud.polardb.inputs.GetEndpointsArgs;
/// import com.pulumi.alicloud.polardb.EndpointAddress;
/// import com.pulumi.alicloud.polardb.EndpointAddressArgs;
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
///             .payType("PostPaid")
///             .category("Normal")
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
///         final var defaultGetEndpoints = PolardbFunctions.getEndpoints(GetEndpointsArgs.builder()
///             .dbClusterId(defaultCluster.id())
///             .build());
///
///         var defaultEndpointAddress = new EndpointAddress("defaultEndpointAddress", EndpointAddressArgs.builder()
///             .dbClusterId(defaultCluster.id())
///             .dbEndpointId(defaultGetEndpoints.applyValue(_defaultGetEndpoints -> _defaultGetEndpoints.endpoints()[0].dbEndpointId()))
///             .connectionPrefix("polardbexample")
///             .netType("Public")
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
///   defaultEndpointAddress:
///     type: alicloud:polardb:EndpointAddress
///     name: default
///     properties:
///       dbClusterId: ${defaultCluster.id}
///       dbEndpointId: ${defaultGetEndpoints.endpoints[0].dbEndpointId}
///       connectionPrefix: polardbexample
///       netType: Public
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         payType: PostPaid
///         category: Normal
///   defaultGetEndpoints:
///     fn::invoke:
///       function: alicloud:polardb:getEndpoints
///       arguments:
///         dbClusterId: ${defaultCluster.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PolarDB endpoint address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/endpointAddress:EndpointAddress example pc-abc123456:pe-abc123456
/// ```
class EndpointAddress extends pulumi.CustomResource {
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  late final pulumi.Output<String> connectionPrefix;
  /// Connection cluster or endpoint string.
  late final pulumi.Output<String> connectionString;
  /// The Id of cluster that can run database.
  late final pulumi.Output<String> dbClusterId;
  /// The Id of endpoint that can run database.
  late final pulumi.Output<String> dbEndpointId;
  /// The ip address of connection string.
  late final pulumi.Output<String> ipAddress;
  /// Internet connection net type. Valid value: `Public`. Default to `Public`. Currently supported only `Public`.
  late final pulumi.Output<String?> netType;
  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  late final pulumi.Output<String> port;

  /// Creates a new [EndpointAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointAddress]. {@macro pulumi_polardb_endpoint_address_endpoint_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointAddress(
    String name, {
    EndpointAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/endpointAddress:EndpointAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionPrefix = registerOutput<String>('connectionPrefix');
    connectionString = registerOutput<String>('connectionString');
    dbClusterId = registerOutput<String>('dbClusterId');
    dbEndpointId = registerOutput<String>('dbEndpointId');
    ipAddress = registerOutput<String>('ipAddress');
    netType = registerOutput<String?>('netType');
    port = registerOutput<String>('port');
  }

  /// Gets an existing [EndpointAddress] resource's state with the given [name] and [id].
  static EndpointAddress get(
    String name,
    pulumi.Input<String> id, {
    EndpointAddressState? state,
  }) {
    return EndpointAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/endpointAddress:EndpointAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionPrefix = registerOutput<String>('connectionPrefix');
    connectionString = registerOutput<String>('connectionString');
    dbClusterId = registerOutput<String>('dbClusterId');
    dbEndpointId = registerOutput<String>('dbEndpointId');
    ipAddress = registerOutput<String>('ipAddress');
    netType = registerOutput<String?>('netType');
    port = registerOutput<String>('port');
  }
}
