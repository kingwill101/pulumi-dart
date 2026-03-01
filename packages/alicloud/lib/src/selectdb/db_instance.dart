import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_args.dart';
import 'db_instance_desired_security_ip_list.dart';
import 'db_instance_instance_net_info.dart';
import 'db_instance_security_ip_list.dart';

/// Provides a SelectDB DBInstance resource.
///
/// For information about SelectDB DBInstance and how to use it, see [What is DBInstance](https://www.alibabacloud.com/help/zh/selectdb/latest/api-selectdb-2023-05-22-createdbinstance).
///
/// > **NOTE:** Available since v1.229.0.
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
/// 		_, err = selectdb.NewDbInstance(ctx, "default", &selectdb.DbInstanceArgs{
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
/// SelectDB DBInstance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:selectdb/dbInstance:DbInstance example <id>
/// ```
class DbInstance extends pulumi.CustomResource {
  /// The password for DBInstance using admin account.
  late final pulumi.Output<String?> adminPass;
  /// The cache size in DBInstance on creating default cluster. The number should be divided by 100.
  late final pulumi.Output<int> cacheSize;
  /// The sum of cache size for every `PayAsYouGo` clusters in DBInstance.
  late final pulumi.Output<int> cacheSizePostpaid;
  /// The sum of cache size for every `Subscription` clusters in DBInstance.
  late final pulumi.Output<int> cacheSizePrepaid;
  /// The sum of cluster counts for `PayAsYouGo` clusters in DBInstance.
  late final pulumi.Output<int> clusterCountPostpaid;
  /// The sum of cluster counts for `Subscription` clusters in DBInstance.
  late final pulumi.Output<int> clusterCountPrepaid;
  /// The sum of cpu resource amount for every `PayAsYouGo` clusters in DBInstance.
  late final pulumi.Output<int> cpuPostpaid;
  /// The sum of cpu resource amount for every `Subscription` clusters in DBInstance.
  late final pulumi.Output<int> cpuPrepaid;
  /// The class for default cluster in DBInstance. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  late final pulumi.Output<String> dbInstanceClass;
  /// The DBInstance description.
  late final pulumi.Output<String> dbInstanceDescription;
  /// The modified IP address whitelists. See `desired_security_ip_lists` below.
  late final pulumi.Output<List<DbInstanceDesiredSecurityIpList>?> desiredSecurityIpLists;
  /// If DBInstance need to open public network, set it to `true`.
  late final pulumi.Output<bool?> enablePublicNetwork;
  /// The engine of DBInstance. Always `selectdb`.
  late final pulumi.Output<String> engine;
  /// The DBInstance minor version. Valid values: `3.0.12`,`4.0.4`.
  late final pulumi.Output<String> engineMinorVersion;
  /// The time when DBInstance is created.
  late final pulumi.Output<String> gmtCreated;
  /// The time when DBInstance will be expired. Available on `Subscription` DBInstance.
  late final pulumi.Output<String> gmtExpired;
  /// The time when DBInstance is modified.
  late final pulumi.Output<String> gmtModified;
  /// The net infos for instances.
  late final pulumi.Output<List<DbInstanceInstanceNetInfo>> instanceNetInfos;
  /// The lock mode of the instance. Set the value to lock, which specifies that the instance is locked when it automatically expires or has an overdue payment.
  late final pulumi.Output<String> lockMode;
  /// The reason why the instance is locked.
  late final pulumi.Output<String> lockReason;
  /// The sum of memory resource amount offor every `PayAsYouGo` clusters in DBInstance.
  late final pulumi.Output<int> memoryPostpaid;
  /// The sum of memory resource amount offor every `Subscription` clusters in DBInstance.
  late final pulumi.Output<int> memoryPrepaid;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  late final pulumi.Output<String> paymentType;
  /// It is valid when payment_type is `Subscription`. Valid values are `Year`, `Month`.
  late final pulumi.Output<String?> period;
  /// The duration that you will buy DBInstance. It is valid when payment_type is `Subscription`. Valid values: [1~9], 12, 24, 36.
  late final pulumi.Output<int?> periodTime;
  /// The region ID of the instance.
  late final pulumi.Output<String> regionId;
  /// The details about each IP address whitelist returned.
  late final pulumi.Output<List<DbInstanceSecurityIpList>> securityIpLists;
  /// The status of the resource. Valid values: `ACTIVATION`,`STOPPED`,`STARTING`,`RESTART`.
  late final pulumi.Output<String> status;
  /// The sub domain of DBInstance.
  late final pulumi.Output<String> subDomain;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Field `upgraded_engine_minor_version` has been deprecated from provider version 1.248.0. New field `engine_minor_version` instead.
  late final pulumi.Output<String> upgradedEngineMinorVersion;
  /// The ID of the VPC for DBInstance.
  late final pulumi.Output<String> vpcId;
  /// The ID of vswitch for DBInstance.
  late final pulumi.Output<String> vswitchId;
  /// The ID of zone for DBInstance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DbInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbInstance]. {@macro pulumi_selectdb_db_instance_db_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbInstance(
    String name, {
    DbInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:selectdb/dbInstance:DbInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminPass = registerOutput<String?>('adminPass');
    this.cacheSize = registerOutput<int>('cacheSize');
    this.cacheSizePostpaid = registerOutput<int>('cacheSizePostpaid');
    this.cacheSizePrepaid = registerOutput<int>('cacheSizePrepaid');
    this.clusterCountPostpaid = registerOutput<int>('clusterCountPostpaid');
    this.clusterCountPrepaid = registerOutput<int>('clusterCountPrepaid');
    this.cpuPostpaid = registerOutput<int>('cpuPostpaid');
    this.cpuPrepaid = registerOutput<int>('cpuPrepaid');
    this.dbInstanceClass = registerOutput<String>('dbInstanceClass');
    this.dbInstanceDescription = registerOutput<String>('dbInstanceDescription');
    this.desiredSecurityIpLists = registerOutput<List<DbInstanceDesiredSecurityIpList>?>('desiredSecurityIpLists');
    this.enablePublicNetwork = registerOutput<bool?>('enablePublicNetwork');
    this.engine = registerOutput<String>('engine');
    this.engineMinorVersion = registerOutput<String>('engineMinorVersion');
    this.gmtCreated = registerOutput<String>('gmtCreated');
    this.gmtExpired = registerOutput<String>('gmtExpired');
    this.gmtModified = registerOutput<String>('gmtModified');
    this.instanceNetInfos = registerOutput<List<DbInstanceInstanceNetInfo>>('instanceNetInfos');
    this.lockMode = registerOutput<String>('lockMode');
    this.lockReason = registerOutput<String>('lockReason');
    this.memoryPostpaid = registerOutput<int>('memoryPostpaid');
    this.memoryPrepaid = registerOutput<int>('memoryPrepaid');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<String?>('period');
    this.periodTime = registerOutput<int?>('periodTime');
    this.regionId = registerOutput<String>('regionId');
    this.securityIpLists = registerOutput<List<DbInstanceSecurityIpList>>('securityIpLists');
    this.status = registerOutput<String>('status');
    this.subDomain = registerOutput<String>('subDomain');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.upgradedEngineMinorVersion = registerOutput<String>('upgradedEngineMinorVersion');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
