import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a Lindorm Instance resource.
///
/// For information about Lindorm Instance and how to use it, see [What is Instance](https://www.alibabacloud.com/help/en/lindorm/latest/product-introduction-overview).
///
/// &gt; **NOTE:** Available since v1.132.0.
///
/// &gt; **NOTE:**  The Lindorm Instance does not support updating the specifications of multiple different engines, or the number of nodes at the same time.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const region = "cn-hangzhou";
/// const zoneId = "cn-hangzhou-h";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = defaultGetNetworks.then(defaultGetNetworks => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: zoneId,
/// }));
/// const defaultInstance = new alicloud.lindorm.Instance("default", {
///     diskCategory: "cloud_efficiency",
///     paymentType: "PayAsYouGo",
///     zoneId: zoneId,
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     instanceName: name,
///     tableEngineSpecification: "lindorm.g.4xlarge",
///     tableEngineNodeCount: 2,
///     instanceStorage: "1920",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// region = "cn-hangzhou"
/// zone_id = "cn-hangzhou-h"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=zone_id)
/// default_instance = alicloud.lindorm.Instance("default",
///     disk_category="cloud_efficiency",
///     payment_type="PayAsYouGo",
///     zone_id=zone_id,
///     vswitch_id=default_get_switches.ids[0],
///     vpc_id=default_get_networks.ids[0],
///     instance_name=name,
///     table_engine_specification="lindorm.g.4xlarge",
///     table_engine_node_count=2,
///     instance_storage="1920")
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
///     var name = config.Get("name") ?? "tf-example";
///     var region = "cn-hangzhou";
///
///     var zoneId = "cn-hangzhou-h";
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = zoneId,
///     });
///
///     var defaultInstance = new AliCloud.Lindorm.Instance("default", new()
///     {
///         DiskCategory = "cloud_efficiency",
///         PaymentType = "PayAsYouGo",
///         ZoneId = zoneId,
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         InstanceName = name,
///         TableEngineSpecification = "lindorm.g.4xlarge",
///         TableEngineNodeCount = 2,
///         InstanceStorage = "1920",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/lindorm"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_ := "cn-hangzhou"
/// 		zoneId := "cn-hangzhou-h"
/// 		_, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
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
/// 			ZoneId: pulumi.StringRef(zoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lindorm.NewInstance(ctx, "default", &lindorm.InstanceArgs{
/// 			DiskCategory:             pulumi.String("cloud_efficiency"),
/// 			PaymentType:              pulumi.String("PayAsYouGo"),
/// 			ZoneId:                   pulumi.String(zoneId),
/// 			VswitchId:                pulumi.String(defaultGetSwitches.Ids[0]),
/// 			VpcId:                    pulumi.String(defaultGetNetworks.Ids[0]),
/// 			InstanceName:             pulumi.String(name),
/// 			TableEngineSpecification: pulumi.String("lindorm.g.4xlarge"),
/// 			TableEngineNodeCount:     pulumi.Int(2),
/// 			InstanceStorage:          pulumi.String("1920"),
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
/// import com.pulumi.alicloud.lindorm.Instance;
/// import com.pulumi.alicloud.lindorm.InstanceArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var region = "cn-hangzhou";
///
///         final var zoneId = "cn-hangzhou-h";
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(zoneId)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .diskCategory("cloud_efficiency")
///             .paymentType("PayAsYouGo")
///             .zoneId(zoneId)
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .vpcId(defaultGetNetworks.ids()[0])
///             .instanceName(name)
///             .tableEngineSpecification("lindorm.g.4xlarge")
///             .tableEngineNodeCount(2)
///             .instanceStorage("1920")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultInstance:
///     type: alicloud:lindorm:Instance
///     name: default
///     properties:
///       diskCategory: cloud_efficiency
///       paymentType: PayAsYouGo
///       zoneId: ${zoneId}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       vpcId: ${defaultGetNetworks.ids[0]}
///       instanceName: ${name}
///       tableEngineSpecification: lindorm.g.4xlarge
///       tableEngineNodeCount: '2'
///       instanceStorage: '1920'
/// variables:
///   region: cn-hangzhou
///   zoneId: cn-hangzhou-h
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
///         zoneId: ${zoneId}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Lindorm Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:lindorm/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// The multi-availability zone instance, coordinating the virtual switch ID of the availability zone, the switch must be located under the availability zone corresponding to the ArbiterZoneId. This parameter is required if you need to create multiple availability zone instances.
  late final pulumi.Output<String?> arbiterVswitchId;

  /// The multiple Availability Zone Instance, the availability zone ID of the coordinating availability zone. required if you need to create multiple availability zone instances.
  late final pulumi.Output<String?> arbiterZoneId;

  /// The deployment architecture. If you do not fill in this parameter, the default is 1.0. to create multiple availability instances, fill in 2.0. if you need to create multiple availability instances, this parameter is required. Valid values: `1.0` to `2.0`.
  late final pulumi.Output<String> archVersion;

  /// Specifies whether to enable auto-renewal for the instance. Valid when the `payment_type` is `Subscription`. Default value: false. Valid values: true(enables auto-renewal), false(disables auto-renewal).
  late final pulumi.Output<String?> autoRenew;

  /// The subscription duration that is supported by auto-renewal. Unit: months. Valid values: `1` to `12`. This parameter is required only if the AutoRenew parameter is set to true.
  late final pulumi.Output<String?> autoRenewPeriod;

  /// The cold storage capacity of the instance. Unit: GB. Valid values: [800, 1000000].
  late final pulumi.Output<int> coldStorage;

  /// The multiple availability zone instances, CORE single node capacity. required if you want to create multiple availability zone instances. Valid values: `400` to `64000`.
  late final pulumi.Output<int?> coreSingleStorage;

  /// The core spec. When `disk_category` is `local_ssd_pro` or `local_hdd_pro`, this filed is valid.
  /// - When `disk_category` is `local_ssd_pro`, the valid values is `lindorm.i2.xlarge`, `lindorm.i2.2xlarge`, `lindorm.i2.4xlarge`, `lindorm.i2.8xlarge`.
  /// - When `disk_category` is `local_hdd_pro`, the valid values is `lindorm.d2c.6xlarge`, `lindorm.d2c.12xlarge`, `lindorm.d2c.24xlarge`, `lindorm.d2s.5xlarge`, `lindorm.d2s.10xlarge`, `lindorm.d1.2xlarge`, `lindorm.d1.4xlarge`, `lindorm.d1.6xlarge`.
  late final pulumi.Output<String> coreSpec;

  /// The deletion protection of instance.
  late final pulumi.Output<bool> deletionProection;

  /// The disk type of instance. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_essd_pl0`, `capacity_cloud_storage`, `local_ssd_pro`, `local_hdd_pro`. **NOTE:** From version 1.207.0, `disk_category` can be set to `cloud_essd_pl0`.
  late final pulumi.Output<String> diskCategory;

  /// The duration of paid. Valid when the `payment_type` is `Subscription`.  When `pricing_cycle` set to `Month`, the valid value id `1` to `9`.  When `pricing_cycle` set to `Year`, the valid value id `1` to `3`.
  late final pulumi.Output<String?> duration;

  /// (Available since v1.163.0) Whether to enable file engine.
  late final pulumi.Output<bool> enabledFileEngine;

  /// (Available since v1.163.0) Whether to enable lts engine.
  late final pulumi.Output<bool> enabledLtsEngine;

  /// (Available since v1.163.0) Whether to enable search engine.
  late final pulumi.Output<bool> enabledSearchEngine;

  /// (Available since v1.211.0) Whether to enable streaming engine.
  late final pulumi.Output<bool> enabledStreamEngine;

  /// (Available since v1.163.0) Whether to enable table engine.
  late final pulumi.Output<bool> enabledTableEngine;

  /// (Available since v1.163.0) Whether to enable time serires engine.
  late final pulumi.Output<bool> enabledTimeSeriresEngine;

  /// The count of file engine.
  late final pulumi.Output<int> fileEngineNodeCount;

  /// The specification of file engine. Valid values: `lindorm.c.xlarge`.
  late final pulumi.Output<String> fileEngineSpecification;

  /// The name of the instance.
  late final pulumi.Output<String?> instanceName;

  /// The storage capacity of the instance. Unit: GB. Valid values: [80, 10485760], and the value must be divisible by 80.
  late final pulumi.Output<String> instanceStorage;

  /// The ip white list of instance.
  late final pulumi.Output<List<String>?> ipWhiteLists;

  /// The multi-available zone instance, log node disk type. required if you need to create multiple availability zone instances. Valid values: `cloud_efficiency`, `cloud_ssd`.
  late final pulumi.Output<String?> logDiskCategory;

  /// The multiple Availability Zone Instance, number of log nodes. this parameter is required if you want to create multiple availability zone instances. Valid values: `4` to `400`.
  late final pulumi.Output<int?> logNum;

  /// The multi-availability instance, log single-node disk capacity. This parameter is required if you want to create multiple availability zone instances. Valid values: `400` to `64000`.
  late final pulumi.Output<int?> logSingleStorage;

  /// The multiple availability zone instances, log node specification. required if you need to create multiple availability zone instances. Valid values: `lindorm.sn1.large`, `lindorm.sn1.2xlarge`.
  late final pulumi.Output<String?> logSpec;

  /// The count of lindorm tunnel service.
  late final pulumi.Output<int> ltsNodeCount;

  /// The specification of lindorm tunnel service. Valid values: `lindorm.g.2xlarge`, `lindorm.g.xlarge`.
  late final pulumi.Output<String> ltsNodeSpecification;

  /// The multi-zone combinations. Availability zone combinations are supported on the sale page. required if you need to create multiple availability zone instances. Valid values: `ap-southeast-5abc-aliyun`, `cn-hangzhou-ehi-aliyun`, `cn-beijing-acd-aliyun`, `ap-southeast-1-abc-aliyun`, `cn-zhangjiakou-abc-aliyun`, `cn-shanghai-efg-aliyun`, `cn-shanghai-abd-aliyun`, `cn-hangzhou-bef-aliyun`, `cn-hangzhou-bce-aliyun`, `cn-beijing-fgh-aliyun`, `cn-shenzhen-abc-aliyun`.
  late final pulumi.Output<String?> multiZoneCombination;

  /// The billing method. Valid values: `PayAsYouGo` and `Subscription`.
  late final pulumi.Output<String> paymentType;

  /// The pricing cycle. Valid when the `payment_type` is `Subscription`. Valid values: `Month` and `Year`.
  late final pulumi.Output<String?> pricingCycle;

  /// Multi-available zone instances, the virtual switch ID of the primary available zone, must be under the available zone corresponding to the PrimaryZoneId. required if you need to create multiple availability zone instances.
  late final pulumi.Output<String?> primaryVswitchId;

  /// Multi-availability zone instance with the availability zone ID of the main availability zone. required if you need to create multiple availability zone instances.
  late final pulumi.Output<String?> primaryZoneId;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The count of search engine.
  late final pulumi.Output<int> searchEngineNodeCount;

  /// The specification of search engine. Valid values: `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  late final pulumi.Output<String> searchEngineSpecification;

  /// (Available since v1.196.0) The instance type.
  late final pulumi.Output<String> serviceType;

  /// The multiple availability zone instances, the virtual switch ID of the ready availability zone must be under the availability zone corresponding to the StandbyZoneId. required if you need to create multiple availability zone instances.
  late final pulumi.Output<String?> standbyVswitchId;

  /// The multiple availability zone instances with availability zone IDs for the prepared availability zones. required if you need to create multiple availability zone instances.
  late final pulumi.Output<String?> standbyZoneId;

  /// The status of Instance.
  late final pulumi.Output<String> status;

  /// The number of LindormStream nodes in the instance.
  late final pulumi.Output<int> streamEngineNodeCount;

  /// The specification of the LindormStream nodes in the instance. Valid values: `lindorm.g.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`.
  late final pulumi.Output<String> streamEngineSpecification;

  /// The count of table engine.
  late final pulumi.Output<int> tableEngineNodeCount;

  /// The specification of  table engine. Valid values: `lindorm.c.2xlarge`, `lindorm.c.4xlarge`, `lindorm.c.8xlarge`, `lindorm.g.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`.
  late final pulumi.Output<String> tableEngineSpecification;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The count of time series engine.
  late final pulumi.Output<int> timeSeriesEngineNodeCount;

  /// The specification of time series engine. Valid values: `lindorm.g.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.r.8xlarge`.
  late final pulumi.Output<String> timeSeriesEngineSpecification;

  /// Field `time_serires_engine_specification` has been deprecated from provider version 1.182.0. New field `time_series_engine_specification` instead.
  late final pulumi.Output<String> timeSeriresEngineSpecification;

  /// The VPC ID of the instance.
  late final pulumi.Output<String> vpcId;

  /// The vswitch id.
  late final pulumi.Output<String> vswitchId;

  /// The zone ID of the instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_lindorm_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:lindorm/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arbiterVswitchId = registerOutput<String?>('arbiterVswitchId');
    arbiterZoneId = registerOutput<String?>('arbiterZoneId');
    archVersion = registerOutput<String>('archVersion');
    autoRenew = registerOutput<String?>('autoRenew');
    autoRenewPeriod = registerOutput<String?>('autoRenewPeriod');
    coldStorage = registerOutput<int>('coldStorage');
    coreSingleStorage = registerOutput<int?>('coreSingleStorage');
    coreSpec = registerOutput<String>('coreSpec');
    deletionProection = registerOutput<bool>('deletionProection');
    diskCategory = registerOutput<String>('diskCategory');
    duration = registerOutput<String?>('duration');
    enabledFileEngine = registerOutput<bool>('enabledFileEngine');
    enabledLtsEngine = registerOutput<bool>('enabledLtsEngine');
    enabledSearchEngine = registerOutput<bool>('enabledSearchEngine');
    enabledStreamEngine = registerOutput<bool>('enabledStreamEngine');
    enabledTableEngine = registerOutput<bool>('enabledTableEngine');
    enabledTimeSeriresEngine = registerOutput<bool>('enabledTimeSeriresEngine');
    fileEngineNodeCount = registerOutput<int>('fileEngineNodeCount');
    fileEngineSpecification = registerOutput<String>('fileEngineSpecification');
    instanceName = registerOutput<String?>('instanceName');
    instanceStorage = registerOutput<String>('instanceStorage');
    ipWhiteLists = registerOutput<List<String>?>('ipWhiteLists');
    logDiskCategory = registerOutput<String?>('logDiskCategory');
    logNum = registerOutput<int?>('logNum');
    logSingleStorage = registerOutput<int?>('logSingleStorage');
    logSpec = registerOutput<String?>('logSpec');
    ltsNodeCount = registerOutput<int>('ltsNodeCount');
    ltsNodeSpecification = registerOutput<String>('ltsNodeSpecification');
    multiZoneCombination = registerOutput<String?>('multiZoneCombination');
    paymentType = registerOutput<String>('paymentType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    primaryVswitchId = registerOutput<String?>('primaryVswitchId');
    primaryZoneId = registerOutput<String?>('primaryZoneId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    searchEngineNodeCount = registerOutput<int>('searchEngineNodeCount');
    searchEngineSpecification = registerOutput<String>(
      'searchEngineSpecification',
    );
    serviceType = registerOutput<String>('serviceType');
    standbyVswitchId = registerOutput<String?>('standbyVswitchId');
    standbyZoneId = registerOutput<String?>('standbyZoneId');
    status = registerOutput<String>('status');
    streamEngineNodeCount = registerOutput<int>('streamEngineNodeCount');
    streamEngineSpecification = registerOutput<String>(
      'streamEngineSpecification',
    );
    tableEngineNodeCount = registerOutput<int>('tableEngineNodeCount');
    tableEngineSpecification = registerOutput<String>(
      'tableEngineSpecification',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    timeSeriesEngineNodeCount = registerOutput<int>(
      'timeSeriesEngineNodeCount',
    );
    timeSeriesEngineSpecification = registerOutput<String>(
      'timeSeriesEngineSpecification',
    );
    timeSeriresEngineSpecification = registerOutput<String>(
      'timeSeriresEngineSpecification',
    );
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:lindorm/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arbiterVswitchId = registerOutput<String?>('arbiterVswitchId');
    arbiterZoneId = registerOutput<String?>('arbiterZoneId');
    archVersion = registerOutput<String>('archVersion');
    autoRenew = registerOutput<String?>('autoRenew');
    autoRenewPeriod = registerOutput<String?>('autoRenewPeriod');
    coldStorage = registerOutput<int>('coldStorage');
    coreSingleStorage = registerOutput<int?>('coreSingleStorage');
    coreSpec = registerOutput<String>('coreSpec');
    deletionProection = registerOutput<bool>('deletionProection');
    diskCategory = registerOutput<String>('diskCategory');
    duration = registerOutput<String?>('duration');
    enabledFileEngine = registerOutput<bool>('enabledFileEngine');
    enabledLtsEngine = registerOutput<bool>('enabledLtsEngine');
    enabledSearchEngine = registerOutput<bool>('enabledSearchEngine');
    enabledStreamEngine = registerOutput<bool>('enabledStreamEngine');
    enabledTableEngine = registerOutput<bool>('enabledTableEngine');
    enabledTimeSeriresEngine = registerOutput<bool>('enabledTimeSeriresEngine');
    fileEngineNodeCount = registerOutput<int>('fileEngineNodeCount');
    fileEngineSpecification = registerOutput<String>('fileEngineSpecification');
    instanceName = registerOutput<String?>('instanceName');
    instanceStorage = registerOutput<String>('instanceStorage');
    ipWhiteLists = registerOutput<List<String>?>('ipWhiteLists');
    logDiskCategory = registerOutput<String?>('logDiskCategory');
    logNum = registerOutput<int?>('logNum');
    logSingleStorage = registerOutput<int?>('logSingleStorage');
    logSpec = registerOutput<String?>('logSpec');
    ltsNodeCount = registerOutput<int>('ltsNodeCount');
    ltsNodeSpecification = registerOutput<String>('ltsNodeSpecification');
    multiZoneCombination = registerOutput<String?>('multiZoneCombination');
    paymentType = registerOutput<String>('paymentType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    primaryVswitchId = registerOutput<String?>('primaryVswitchId');
    primaryZoneId = registerOutput<String?>('primaryZoneId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    searchEngineNodeCount = registerOutput<int>('searchEngineNodeCount');
    searchEngineSpecification = registerOutput<String>(
      'searchEngineSpecification',
    );
    serviceType = registerOutput<String>('serviceType');
    standbyVswitchId = registerOutput<String?>('standbyVswitchId');
    standbyZoneId = registerOutput<String?>('standbyZoneId');
    status = registerOutput<String>('status');
    streamEngineNodeCount = registerOutput<int>('streamEngineNodeCount');
    streamEngineSpecification = registerOutput<String>(
      'streamEngineSpecification',
    );
    tableEngineNodeCount = registerOutput<int>('tableEngineNodeCount');
    tableEngineSpecification = registerOutput<String>(
      'tableEngineSpecification',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    timeSeriesEngineNodeCount = registerOutput<int>(
      'timeSeriesEngineNodeCount',
    );
    timeSeriesEngineSpecification = registerOutput<String>(
      'timeSeriesEngineSpecification',
    );
    timeSeriresEngineSpecification = registerOutput<String>(
      'timeSeriresEngineSpecification',
    );
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}
