import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_cluster_args.dart';
import 'db_cluster_state.dart';

/// Provides a SelectDB DBCluster resource.
///
/// For information about SelectDB DBCluster and how to use it, see [What is DBCluster](https://www.alibabacloud.com/help/zh/selectdb/latest/api-selectdb-2023-05-22-createdbcluster).
///
/// &gt; **NOTE:** Available since v1.229.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.zones?.[0]?.id,
/// }));
/// const defaultDbInstance = new alicloud.selectdb.DbInstance("default", {
///     dbInstanceClass: "selectdb.xlarge",
///     dbInstanceDescription: name,
///     cacheSize: 200,
///     paymentType: "PayAsYouGo",
///     engineMinorVersion: "3.0.12",
///     vpcId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.vpcId),
///     zoneId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.zoneId),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.id),
/// });
/// const defaultDbCluster = new alicloud.selectdb.DbCluster("default", {
///     dbInstanceId: defaultDbInstance.id,
///     dbClusterDescription: name,
///     dbClusterClass: "selectdb.2xlarge",
///     cacheSize: 400,
///     paymentType: "PayAsYouGo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.zones[0].id)
/// default_db_instance = alicloud.selectdb.DbInstance("default",
///     db_instance_class="selectdb.xlarge",
///     db_instance_description=name,
///     cache_size=200,
///     payment_type="PayAsYouGo",
///     engine_minor_version="3.0.12",
///     vpc_id=default_get_switches.vswitches[0].vpc_id,
///     zone_id=default_get_switches.vswitches[0].zone_id,
///     vswitch_id=default_get_switches.vswitches[0].id)
/// default_db_cluster = alicloud.selectdb.DbCluster("default",
///     db_instance_id=default_db_instance.id,
///     db_cluster_description=name,
///     db_cluster_class="selectdb.2xlarge",
///     cache_size=400,
///     payment_type="PayAsYouGo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultDbInstance = new AliCloud.SelectDB.DbInstance("default", new()
///     {
///         DbInstanceClass = "selectdb.xlarge",
///         DbInstanceDescription = name,
///         CacheSize = 200,
///         PaymentType = "PayAsYouGo",
///         EngineMinorVersion = "3.0.12",
///         VpcId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.VpcId),
///         ZoneId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.ZoneId),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.Id),
///     });
///
///     var defaultDbCluster = new AliCloud.SelectDB.DbCluster("default", new()
///     {
///         DbInstanceId = defaultDbInstance.Id,
///         DbClusterDescription = name,
///         DbClusterClass = "selectdb.2xlarge",
///         CacheSize = 400,
///         PaymentType = "PayAsYouGo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/selectdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDbInstance, err := selectdb.NewDbInstance(ctx, "default", &selectdb.DbInstanceArgs{
/// 			DbInstanceClass:       pulumi.String("selectdb.xlarge"),
/// 			DbInstanceDescription: pulumi.String(name),
/// 			CacheSize:             pulumi.Int(200),
/// 			PaymentType:           pulumi.String("PayAsYouGo"),
/// 			EngineMinorVersion:    pulumi.String("3.0.12"),
/// 			VpcId:                 pulumi.String(defaultGetSwitches.Vswitches[0].VpcId),
/// 			ZoneId:                pulumi.String(defaultGetSwitches.Vswitches[0].ZoneId),
/// 			VswitchId:             pulumi.String(defaultGetSwitches.Vswitches[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = selectdb.NewDbCluster(ctx, "default", &selectdb.DbClusterArgs{
/// 			DbInstanceId:         defaultDbInstance.ID(),
/// 			DbClusterDescription: pulumi.String(name),
/// 			DbClusterClass:       pulumi.String("selectdb.2xlarge"),
/// 			CacheSize:            pulumi.Int(400),
/// 			PaymentType:          pulumi.String("PayAsYouGo"),
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
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.selectdb.DbInstance;
/// import com.pulumi.alicloud.selectdb.DbInstanceArgs;
/// import com.pulumi.alicloud.selectdb.DbCluster;
/// import com.pulumi.alicloud.selectdb.DbClusterArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var name = config.get("name").orElse("terraform_example");
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultDbInstance = new DbInstance("defaultDbInstance", DbInstanceArgs.builder()
///             .dbInstanceClass("selectdb.xlarge")
///             .dbInstanceDescription(name)
///             .cacheSize(200)
///             .paymentType("PayAsYouGo")
///             .engineMinorVersion("3.0.12")
///             .vpcId(defaultGetSwitches.vswitches()[0].vpcId())
///             .zoneId(defaultGetSwitches.vswitches()[0].zoneId())
///             .vswitchId(defaultGetSwitches.vswitches()[0].id())
///             .build());
///
///         var defaultDbCluster = new DbCluster("defaultDbCluster", DbClusterArgs.builder()
///             .dbInstanceId(defaultDbInstance.id())
///             .dbClusterDescription(name)
///             .dbClusterClass("selectdb.2xlarge")
///             .cacheSize(400)
///             .paymentType("PayAsYouGo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   defaultDbInstance:
///     type: alicloud:selectdb:DbInstance
///     name: default
///     properties:
///       dbInstanceClass: selectdb.xlarge
///       dbInstanceDescription: ${name}
///       cacheSize: 200
///       paymentType: PayAsYouGo
///       engineMinorVersion: 3.0.12
///       vpcId: ${defaultGetSwitches.vswitches[0].vpcId}
///       zoneId: ${defaultGetSwitches.vswitches[0].zoneId}
///       vswitchId: ${defaultGetSwitches.vswitches[0].id}
///   defaultDbCluster:
///     type: alicloud:selectdb:DbCluster
///     name: default
///     properties:
///       dbInstanceId: ${defaultDbInstance.id}
///       dbClusterDescription: ${name}
///       dbClusterClass: selectdb.2xlarge
///       cacheSize: 400
///       paymentType: PayAsYouGo
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
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
///         zoneId: ${default.zones[0].id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SelectDB DBCluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:selectdb/dbCluster:DbCluster example <db_instance_id>:<db_cluster_id>
/// ```
class DbCluster extends pulumi.CustomResource {
  /// The desired cache size on creating cluster. The number should be divided by 100.
  late final pulumi.Output<int> cacheSize;
  /// The cpu resource amount of DBCluster. Depends on `db_cluster_class`.
  late final pulumi.Output<int> cpu;
  /// The time when DBCluster is created.
  late final pulumi.Output<String> createTime;
  /// The DBCluster class. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  late final pulumi.Output<String> dbClusterClass;
  /// The DBCluster description.
  late final pulumi.Output<String> dbClusterDescription;
  /// The id of the cluster.
  late final pulumi.Output<String> dbClusterId;
  /// The InstanceId of DBInstance for DBCluster. Every DBCluster requires one DBInstance to rely on.
  late final pulumi.Output<String> dbInstanceId;
  /// The modified parameter in DBCluster. See `desired_params` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> desiredParams;
  /// The desired status for the resource. Valid values: `ACTIVATION`,`STOPPED`,`STARTING`,`RESTART`.
  late final pulumi.Output<String?> desiredStatus;
  /// The engine of DBCluster. Always `selectdb`.
  late final pulumi.Output<String> engine;
  /// The version of DBCluster.
  late final pulumi.Output<String> engineVersion;
  /// The memory resource amount of DBCluster. Depends on `db_cluster_class`.
  late final pulumi.Output<int> memory;
  /// The details about parameter changelogs in DBCluster returned.
  late final pulumi.Output<List<Map<String, dynamic>>> paramChangeLogs;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  late final pulumi.Output<String> paymentType;
  /// The ID of region for the cluster.
  late final pulumi.Output<String> regionId;
  /// The current status of the resource.
  late final pulumi.Output<String> status;
  /// The ID of the VPC for the cluster.
  late final pulumi.Output<String> vpcId;
  /// The ID of zone for the cluster.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DbCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbCluster]. {@macro pulumi_selectdb_db_cluster_db_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbCluster(
    String name, {
    DbClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:selectdb/dbCluster:DbCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cacheSize = registerOutput<int>('cacheSize');
    cpu = registerOutput<int>('cpu');
    createTime = registerOutput<String>('createTime');
    dbClusterClass = registerOutput<String>('dbClusterClass');
    dbClusterDescription = registerOutput<String>('dbClusterDescription');
    dbClusterId = registerOutput<String>('dbClusterId');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    desiredParams = registerOutput<List<Map<String, dynamic>>?>('desiredParams');
    desiredStatus = registerOutput<String?>('desiredStatus');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    memory = registerOutput<int>('memory');
    paramChangeLogs = registerOutput<List<Map<String, dynamic>>>('paramChangeLogs');
    paymentType = registerOutput<String>('paymentType');
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DbCluster] resource's state with the given [name] and [id].
  static DbCluster get(
    String name,
    pulumi.Input<String> id, {
    DbClusterState? state,
  }) {
    return DbCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DbCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:selectdb/dbCluster:DbCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cacheSize = registerOutput<int>('cacheSize');
    cpu = registerOutput<int>('cpu');
    createTime = registerOutput<String>('createTime');
    dbClusterClass = registerOutput<String>('dbClusterClass');
    dbClusterDescription = registerOutput<String>('dbClusterDescription');
    dbClusterId = registerOutput<String>('dbClusterId');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    desiredParams = registerOutput<List<Map<String, dynamic>>?>('desiredParams');
    desiredStatus = registerOutput<String?>('desiredStatus');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    memory = registerOutput<int>('memory');
    paramChangeLogs = registerOutput<List<Map<String, dynamic>>>('paramChangeLogs');
    paymentType = registerOutput<String>('paymentType');
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    zoneId = registerOutput<String>('zoneId');
  }
}
