import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_endpoint_args.dart';
import 'cluster_endpoint_state.dart';

/// Provides a PolarDB endpoint resource to manage cluster endpoint of PolarDB cluster.
///
/// > **NOTE:** Available since v1.217.0
///
/// > **NOTE:** The default cluster endpoint can not be created or deleted manually.
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
/// const defaultClusterEndpoint = new alicloud.polardb.ClusterEndpoint("default", {dbClusterId: defaultCluster.id});
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
/// default_cluster_endpoint = alicloud.polardb.ClusterEndpoint("default", db_cluster_id=default_cluster.id)
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
///     var defaultClusterEndpoint = new AliCloud.PolarDB.ClusterEndpoint("default", new()
///     {
///         DbClusterId = defaultCluster.Id,
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
/// 		_, err = polardb.NewClusterEndpoint(ctx, "default", &polardb.ClusterEndpointArgs{
/// 			DbClusterId: defaultCluster.ID(),
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
/// import com.pulumi.alicloud.polardb.ClusterEndpoint;
/// import com.pulumi.alicloud.polardb.ClusterEndpointArgs;
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
///         var defaultClusterEndpoint = new ClusterEndpoint("defaultClusterEndpoint", ClusterEndpointArgs.builder()
///             .dbClusterId(defaultCluster.id())
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
///   defaultClusterEndpoint:
///     type: alicloud:polardb:ClusterEndpoint
///     name: default
///     properties:
///       dbClusterId: ${defaultCluster.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         payType: PostPaid
///         category: Normal
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PolarDB endpoint can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/clusterEndpoint:ClusterEndpoint example pc-abc123456:pe-abc123456
/// ```
class ClusterEndpoint extends pulumi.CustomResource {
  /// Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Disable`.
  late final pulumi.Output<String> autoAddNewNodes;
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  late final pulumi.Output<String> connectionPrefix;
  /// The Id of cluster that can run database.
  late final pulumi.Output<String> dbClusterId;
  /// The name of the endpoint.
  late final pulumi.Output<String?> dbEndpointDescription;
  /// The ID of the cluster endpoint.
  late final pulumi.Output<String> dbEndpointId;
  /// The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  late final pulumi.Output<Map<String, String>> endpointConfig;
  /// Type of endpoint.
  late final pulumi.Output<String> endpointType;
  /// The network type of the endpoint address.
  late final pulumi.Output<String?> netType;
  /// Node id list for endpoint configuration. At least 2 nodes if specified, or if the cluster has more than 3 nodes, read-only endpoint is allowed to mount only one node. Default is all nodes.
  late final pulumi.Output<List<String>> nodes;
  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  late final pulumi.Output<String> port;
  /// Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  late final pulumi.Output<String> readWriteMode;
  /// Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// **NOTE:** For a PolarDB for MySQL cluster, this parameter is required, and only one connection string in each endpoint can enable the ssl, for other notes, see [Configure SSL encryption](https://www.alibabacloud.com/help/doc-detail/153182.htm).
  /// For a PolarDB for PostgreSQL cluster or a PolarDB-O cluster, this parameter is not required, by default, SSL encryption is enabled for all endpoints.
  late final pulumi.Output<String?> sslAutoRotate;
  /// The specifies SSL certificate download link.
  late final pulumi.Output<String> sslCertificateUrl;
  /// The SSL connection string.
  late final pulumi.Output<String> sslConnectionString;
  /// Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  late final pulumi.Output<String?> sslEnabled;
  /// The time when the SSL certificate expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> sslExpireTime;

  /// Creates a new [ClusterEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterEndpoint]. {@macro pulumi_polardb_cluster_endpoint_cluster_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterEndpoint(
    String name, {
    ClusterEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/clusterEndpoint:ClusterEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoAddNewNodes = registerOutput<String>('autoAddNewNodes');
    this.connectionPrefix = registerOutput<String>('connectionPrefix');
    this.dbClusterId = registerOutput<String>('dbClusterId');
    this.dbEndpointDescription = registerOutput<String?>('dbEndpointDescription');
    this.dbEndpointId = registerOutput<String>('dbEndpointId');
    this.endpointConfig = registerOutput<Map<String, String>>('endpointConfig');
    this.endpointType = registerOutput<String>('endpointType');
    this.netType = registerOutput<String?>('netType');
    this.nodes = registerOutput<List<String>>('nodes');
    this.port = registerOutput<String>('port');
    this.readWriteMode = registerOutput<String>('readWriteMode');
    this.sslAutoRotate = registerOutput<String?>('sslAutoRotate');
    this.sslCertificateUrl = registerOutput<String>('sslCertificateUrl');
    this.sslConnectionString = registerOutput<String>('sslConnectionString');
    this.sslEnabled = registerOutput<String?>('sslEnabled');
    this.sslExpireTime = registerOutput<String>('sslExpireTime');
  }

  /// Gets an existing [ClusterEndpoint] resource's state with the given [name] and [id].
  static ClusterEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ClusterEndpointState? state,
  }) {
    return ClusterEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/clusterEndpoint:ClusterEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoAddNewNodes = registerOutput<String>('autoAddNewNodes');
    this.connectionPrefix = registerOutput<String>('connectionPrefix');
    this.dbClusterId = registerOutput<String>('dbClusterId');
    this.dbEndpointDescription = registerOutput<String?>('dbEndpointDescription');
    this.dbEndpointId = registerOutput<String>('dbEndpointId');
    this.endpointConfig = registerOutput<Map<String, String>>('endpointConfig');
    this.endpointType = registerOutput<String>('endpointType');
    this.netType = registerOutput<String?>('netType');
    this.nodes = registerOutput<List<String>>('nodes');
    this.port = registerOutput<String>('port');
    this.readWriteMode = registerOutput<String>('readWriteMode');
    this.sslAutoRotate = registerOutput<String?>('sslAutoRotate');
    this.sslCertificateUrl = registerOutput<String>('sslCertificateUrl');
    this.sslConnectionString = registerOutput<String>('sslConnectionString');
    this.sslEnabled = registerOutput<String?>('sslEnabled');
    this.sslExpireTime = registerOutput<String>('sslExpireTime');
  }
}
