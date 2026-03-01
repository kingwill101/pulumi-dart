import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_slb_conn_addr.dart';
import 'instance_state.dart';
import 'instance_ui_proxy_conn_addr.dart';
import 'instance_zk_conn_addr.dart';

/// Provides a HBase instance resource supports replica set instances only. The HBase provides stable, reliable, and automatic scalable database services.
/// It offers a full range of database solutions, such as disaster recovery, backup, recovery, monitoring, and alarms.
/// You can see detail product introduction [here](https://www.alibabacloud.com/help/en/apsaradb-for-hbase/latest/createcluster)
///
/// > **NOTE:** Available since v1.67.0.
///
/// > **NOTE:**  The following regions don't support create Classic network HBase instance.
/// [`cn-hangzhou`,`cn-shanghai`,`cn-qingdao`,`cn-beijing`,`cn-shenzhen`,`ap-southeast-1a`,.....]
/// The official website mark  more regions. or you can call [DescribeRegions](https://www.alibabacloud.com/help/en/apsaradb-for-hbase/latest/describeregions)
///
/// > **NOTE:**  Create HBase instance or change instance type and storage would cost 15 minutes. Please make full preparation
///
/// ## Example Usage
///
/// ### Create a hbase instance
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.hbase.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.zones?.[1]?.id,
/// }));
/// const defaultInstance = new alicloud.hbase.Instance("default", {
///     name: name,
///     zoneId: _default.then(_default => _default.zones?.[1]?.id),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     engine: "hbaseue",
///     engineVersion: "2.0",
///     masterInstanceType: "hbase.sn2.2xlarge",
///     coreInstanceType: "hbase.sn2.2xlarge",
///     coreInstanceQuantity: 2,
///     coreDiskType: "cloud_efficiency",
///     coreDiskSize: 400,
///     payType: "PostPaid",
///     coldStorageSize: 0,
///     deletionProtection: false,
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
/// default = alicloud.hbase.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.zones[1].id)
/// default_instance = alicloud.hbase.Instance("default",
///     name=name,
///     zone_id=default.zones[1].id,
///     vswitch_id=default_get_switches.ids[0],
///     vpc_id=default_get_networks.ids[0],
///     engine="hbaseue",
///     engine_version="2.0",
///     master_instance_type="hbase.sn2.2xlarge",
///     core_instance_type="hbase.sn2.2xlarge",
///     core_instance_quantity=2,
///     core_disk_type="cloud_efficiency",
///     core_disk_size=400,
///     pay_type="PostPaid",
///     cold_storage_size=0,
///     deletion_protection=False)
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
///     var @default = AliCloud.Hbase.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Zones[1]?.Id),
///     });
///
///     var defaultInstance = new AliCloud.Hbase.Instance("default", new()
///     {
///         Name = name,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[1]?.Id)),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         Engine = "hbaseue",
///         EngineVersion = "2.0",
///         MasterInstanceType = "hbase.sn2.2xlarge",
///         CoreInstanceType = "hbase.sn2.2xlarge",
///         CoreInstanceQuantity = 2,
///         CoreDiskType = "cloud_efficiency",
///         CoreDiskSize = 400,
///         PayType = "PostPaid",
///         ColdStorageSize = 0,
///         DeletionProtection = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbase"
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
/// 		_default, err := hbase.GetZones(ctx, &hbase.GetZonesArgs{}, nil)
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
/// 			ZoneId: pulumi.StringRef(_default.Zones[1].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbase.NewInstance(ctx, "default", &hbase.InstanceArgs{
/// 			Name:                 pulumi.String(name),
/// 			ZoneId:               pulumi.String(_default.Zones[1].Id),
/// 			VswitchId:            pulumi.String(defaultGetSwitches.Ids[0]),
/// 			VpcId:                pulumi.String(defaultGetNetworks.Ids[0]),
/// 			Engine:               pulumi.String("hbaseue"),
/// 			EngineVersion:        pulumi.String("2.0"),
/// 			MasterInstanceType:   pulumi.String("hbase.sn2.2xlarge"),
/// 			CoreInstanceType:     pulumi.String("hbase.sn2.2xlarge"),
/// 			CoreInstanceQuantity: pulumi.Int(2),
/// 			CoreDiskType:         pulumi.String("cloud_efficiency"),
/// 			CoreDiskSize:         pulumi.Int(400),
/// 			PayType:              pulumi.String("PostPaid"),
/// 			ColdStorageSize:      pulumi.Int(0),
/// 			DeletionProtection:   pulumi.Bool(false),
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
/// import com.pulumi.alicloud.hbase.HbaseFunctions;
/// import com.pulumi.alicloud.hbase.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.hbase.Instance;
/// import com.pulumi.alicloud.hbase.InstanceArgs;
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
///         final var default = HbaseFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.zones()[1].id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(name)
///             .zoneId(default_.zones()[1].id())
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .vpcId(defaultGetNetworks.ids()[0])
///             .engine("hbaseue")
///             .engineVersion("2.0")
///             .masterInstanceType("hbase.sn2.2xlarge")
///             .coreInstanceType("hbase.sn2.2xlarge")
///             .coreInstanceQuantity(2)
///             .coreDiskType("cloud_efficiency")
///             .coreDiskSize(400)
///             .payType("PostPaid")
///             .coldStorageSize(0)
///             .deletionProtection(false)
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
///     type: alicloud:hbase:Instance
///     name: default
///     properties:
///       name: ${name}
///       zoneId: ${default.zones[1].id}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       vpcId: ${defaultGetNetworks.ids[0]}
///       engine: hbaseue
///       engineVersion: '2.0'
///       masterInstanceType: hbase.sn2.2xlarge
///       coreInstanceType: hbase.sn2.2xlarge
///       coreInstanceQuantity: 2
///       coreDiskType: cloud_efficiency
///       coreDiskSize: 400
///       payType: PostPaid
///       coldStorageSize: 0
///       deletionProtection: 'false'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:hbase:getZones
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
///         zoneId: ${default.zones[1].id}
/// ```
///
///
/// this is a example for class netType instance. you can find more detail with the examples/hbase dir.
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// HBase can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbase/instance:Instance example hb-wz96815u13k659fvd
/// ```
class Instance extends pulumi.CustomResource {
  /// The account of the cluster web ui. Size [0-128].
  late final pulumi.Output<String?> account;
  /// Valid values are `true`, `false`, system default to `false`, valid when pay_type = PrePaid.
  late final pulumi.Output<bool> autoRenew;
  /// 0 or [800, 100000000], step:10-GB increments. 0 means is_cold_storage = false. [800, 100000000] means is_cold_storage = true.
  late final pulumi.Output<int?> coldStorageSize;
  /// User-defined HBase instance one core node's storage. Valid when engine=hbase/hbaseue. Bds engine no need core_disk_size, space.Unit: GB. Value range:
  /// - Custom storage space, value range: [20, 64000].
  /// - Cluster [400, 64000], step:40-GB increments.
  /// - Single [20-500GB], step:1-GB increments.
  late final pulumi.Output<int?> coreDiskSize;
  /// Valid values are `cloud_ssd`, `cloud_essd_pl1`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`，``, local_disk size is fixed. When engine=bds, no need to set disk type(or empty string).
  late final pulumi.Output<String?> coreDiskType;
  /// Default=2, [1-200]. If core_instance_quantity > 1, this is cluster's instance. If core_instance_quantity = 1, this is a single instance.
  late final pulumi.Output<int?> coreInstanceQuantity;
  /// Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/53532.html), or you can call describeInstanceType api.
  late final pulumi.Output<String> coreInstanceType;
  /// The switch of delete protection. True: delete protect, False: no delete protect. You must set false when you want to delete cluster.
  late final pulumi.Output<bool?> deletionProtection;
  /// 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, valid when pay_type = PrePaid,  unit: month. 12, 24, 36 mean 1, 2, 3 years.
  late final pulumi.Output<int> duration;
  /// Valid values are "hbase/hbaseue/bds". The following types are supported after v1.73.0: `hbaseue` and `bds`. Single hbase instance need to set engine=hbase, core_instance_quantity=1.
  late final pulumi.Output<String?> engine;
  /// HBase major version. hbase:1.1/2.0, hbaseue:2.0, bds:1.0, unsupport other engine temporarily. Value options can refer to the latest docs [CreateInstance](https://www.alibabacloud.com/help/en/data-lake-analytics/latest/createinstance).
  late final pulumi.Output<String> engineVersion;
  /// The switch of delete immediate. True: delete immediate, False: delete delay. You will not found the cluster no matter set true or false.
  late final pulumi.Output<bool?> immediateDeleteFlag;
  /// The white ip list of the cluster.
  late final pulumi.Output<String> ipWhite;
  /// The end time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time), for example 04:00Z.
  late final pulumi.Output<String> maintainEndTime;
  /// The start time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time), for example 02:00Z.
  late final pulumi.Output<String> maintainStartTime;
  /// Count nodes of the master node.
  late final pulumi.Output<int> masterInstanceQuantity;
  /// Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/53532.html), or you can call describeInstanceType api.
  late final pulumi.Output<String> masterInstanceType;
  /// HBase instance name. Length must be 2-128 characters long. Only Chinese characters, English letters, numbers, period (.), underline (_), or dash (-) are permitted.
  late final pulumi.Output<String> name;
  /// The password of the cluster web ui account. Size [0-128].
  late final pulumi.Output<String?> password;
  /// Valid values are `PrePaid`, `PostPaid`, System default to `PostPaid`. You can also convert PostPaid to PrePaid. And support convert PrePaid to PostPaid from 1.115.0+.
  late final pulumi.Output<String?> payType;
  /// The security group resource of the cluster.
  late final pulumi.Output<List<String>> securityGroups;
  /// The slb service addresses of the cluster. See `slb_conn_addrs` below.
  ///
  /// > **NOTE:** Now only instance name can be change. The others(instance_type, disk_size, core_instance_quantity and so on) will be supported in the furture.
  late final pulumi.Output<List<InstanceSlbConnAddr>> slbConnAddrs;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Web UI proxy addresses of the cluster. See `ui_proxy_conn_addrs` below.
  late final pulumi.Output<List<InstanceUiProxyConnAddr>> uiProxyConnAddrs;
  /// The id of the VPC.
  late final pulumi.Output<String?> vpcId;
  /// If vswitch_id is not empty, that mean net_type = vpc and has a same region. If vswitch_id is empty, net_type=classic. Intl site not support classic network.
  late final pulumi.Output<String?> vswitchId;
  /// The zookeeper addresses of the cluster. See `zk_conn_addrs` below.
  late final pulumi.Output<List<InstanceZkConnAddr>> zkConnAddrs;
  /// The Zone to launch the HBase instance. If vswitch_id is not empty, this zone_id can be "" or consistent.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_hbase_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbase/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.account = registerOutput<String?>('account');
    this.autoRenew = registerOutput<bool>('autoRenew');
    this.coldStorageSize = registerOutput<int?>('coldStorageSize');
    this.coreDiskSize = registerOutput<int?>('coreDiskSize');
    this.coreDiskType = registerOutput<String?>('coreDiskType');
    this.coreInstanceQuantity = registerOutput<int?>('coreInstanceQuantity');
    this.coreInstanceType = registerOutput<String>('coreInstanceType');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.duration = registerOutput<int>('duration');
    this.engine = registerOutput<String?>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.immediateDeleteFlag = registerOutput<bool?>('immediateDeleteFlag');
    this.ipWhite = registerOutput<String>('ipWhite');
    this.maintainEndTime = registerOutput<String>('maintainEndTime');
    this.maintainStartTime = registerOutput<String>('maintainStartTime');
    this.masterInstanceQuantity = registerOutput<int>('masterInstanceQuantity');
    this.masterInstanceType = registerOutput<String>('masterInstanceType');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.payType = registerOutput<String?>('payType');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.slbConnAddrs = registerOutput<List<InstanceSlbConnAddr>>('slbConnAddrs');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uiProxyConnAddrs = registerOutput<List<InstanceUiProxyConnAddr>>('uiProxyConnAddrs');
    this.vpcId = registerOutput<String?>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.zkConnAddrs = registerOutput<List<InstanceZkConnAddr>>('zkConnAddrs');
    this.zoneId = registerOutput<String>('zoneId');
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
          'alicloud:hbase/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.account = registerOutput<String?>('account');
    this.autoRenew = registerOutput<bool>('autoRenew');
    this.coldStorageSize = registerOutput<int?>('coldStorageSize');
    this.coreDiskSize = registerOutput<int?>('coreDiskSize');
    this.coreDiskType = registerOutput<String?>('coreDiskType');
    this.coreInstanceQuantity = registerOutput<int?>('coreInstanceQuantity');
    this.coreInstanceType = registerOutput<String>('coreInstanceType');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.duration = registerOutput<int>('duration');
    this.engine = registerOutput<String?>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.immediateDeleteFlag = registerOutput<bool?>('immediateDeleteFlag');
    this.ipWhite = registerOutput<String>('ipWhite');
    this.maintainEndTime = registerOutput<String>('maintainEndTime');
    this.maintainStartTime = registerOutput<String>('maintainStartTime');
    this.masterInstanceQuantity = registerOutput<int>('masterInstanceQuantity');
    this.masterInstanceType = registerOutput<String>('masterInstanceType');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.payType = registerOutput<String?>('payType');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.slbConnAddrs = registerOutput<List<InstanceSlbConnAddr>>('slbConnAddrs');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uiProxyConnAddrs = registerOutput<List<InstanceUiProxyConnAddr>>('uiProxyConnAddrs');
    this.vpcId = registerOutput<String?>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.zkConnAddrs = registerOutput<List<InstanceZkConnAddr>>('zkConnAddrs');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
