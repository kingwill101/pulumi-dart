import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_center_args.dart';

/// Provides a Cassandra dataCenter resource supports replica set dataCenters only. The Cassandra provides stable, reliable, and automatic scalable database services.
/// It offers a full range of database solutions, such as disaster recovery, backup, recovery, monitoring, and alarms.
/// You can see detail product introduction [here](https://www.alibabacloud.com/help/product/49055.htm).
///
/// > **NOTE:** Available since v1.88.0.
///
/// > **NOTE:**  Create a cassandra dataCenter need a clusterId,so need create a cassandra cluster first.
///
/// > **NOTE:**  The following regions support create Vpc network Cassandra cluster.
/// The official website mark  more regions. Or you can call [DescribeRegions](https://help.aliyun.com/document_detail/157540.html).
///
/// > **NOTE:**  Create Cassandra dataCenter or change dataCenter type and storage would cost 30 minutes. Please make full preparation.
///
/// > **DEPRECATED:**  This resource has been [deprecated](https://www.alibabacloud.com/help/en/apsaradb-for-cassandra/latest/cassandra-delisting-notice) from version `1.220.0`.
///
/// ## Example Usage
///
/// ### Create a cassandra dataCenter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.cassandra.Cluster("default", {
///     clusterName: "cassandra-cluster-name-tf",
///     dataCenterName: "dc-1",
///     autoRenew: false,
///     instanceType: "cassandra.c.large",
///     majorVersion: "3.11",
///     nodeCount: 2,
///     payType: "PayAsYouGo",
///     vswitchId: "vsw-xxxx1",
///     diskSize: 160,
///     diskType: "cloud_ssd",
///     maintainStartTime: "18:00Z",
///     maintainEndTime: "20:00Z",
///     ipWhite: "127.0.0.1",
/// });
/// const defaultDataCenter = new alicloud.cassandra.DataCenter("default", {
///     clusterId: _default.id,
///     dataCenterName: "dc-2",
///     autoRenew: false,
///     instanceType: "cassandra.c.large",
///     nodeCount: 2,
///     payType: "PayAsYouGo",
///     vswitchId: "vsw-xxxx2",
///     diskSize: 160,
///     diskType: "cloud_ssd",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cassandra.Cluster("default",
///     cluster_name="cassandra-cluster-name-tf",
///     data_center_name="dc-1",
///     auto_renew=False,
///     instance_type="cassandra.c.large",
///     major_version="3.11",
///     node_count=2,
///     pay_type="PayAsYouGo",
///     vswitch_id="vsw-xxxx1",
///     disk_size=160,
///     disk_type="cloud_ssd",
///     maintain_start_time="18:00Z",
///     maintain_end_time="20:00Z",
///     ip_white="127.0.0.1")
/// default_data_center = alicloud.cassandra.DataCenter("default",
///     cluster_id=default.id,
///     data_center_name="dc-2",
///     auto_renew=False,
///     instance_type="cassandra.c.large",
///     node_count=2,
///     pay_type="PayAsYouGo",
///     vswitch_id="vsw-xxxx2",
///     disk_size=160,
///     disk_type="cloud_ssd")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Cassandra.Cluster("default", new()
///     {
///         ClusterName = "cassandra-cluster-name-tf",
///         DataCenterName = "dc-1",
///         AutoRenew = false,
///         InstanceType = "cassandra.c.large",
///         MajorVersion = "3.11",
///         NodeCount = 2,
///         PayType = "PayAsYouGo",
///         VswitchId = "vsw-xxxx1",
///         DiskSize = 160,
///         DiskType = "cloud_ssd",
///         MaintainStartTime = "18:00Z",
///         MaintainEndTime = "20:00Z",
///         IpWhite = "127.0.0.1",
///     });
///
///     var defaultDataCenter = new AliCloud.Cassandra.DataCenter("default", new()
///     {
///         ClusterId = @default.Id,
///         DataCenterName = "dc-2",
///         AutoRenew = false,
///         InstanceType = "cassandra.c.large",
///         NodeCount = 2,
///         PayType = "PayAsYouGo",
///         VswitchId = "vsw-xxxx2",
///         DiskSize = 160,
///         DiskType = "cloud_ssd",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cassandra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cassandra.NewCluster(ctx, "default", &cassandra.ClusterArgs{
/// 			ClusterName:       pulumi.String("cassandra-cluster-name-tf"),
/// 			DataCenterName:    pulumi.String("dc-1"),
/// 			AutoRenew:         pulumi.Bool(false),
/// 			InstanceType:      pulumi.String("cassandra.c.large"),
/// 			MajorVersion:      pulumi.String("3.11"),
/// 			NodeCount:         pulumi.Int(2),
/// 			PayType:           pulumi.String("PayAsYouGo"),
/// 			VswitchId:         pulumi.String("vsw-xxxx1"),
/// 			DiskSize:          pulumi.Int(160),
/// 			DiskType:          pulumi.String("cloud_ssd"),
/// 			MaintainStartTime: pulumi.String("18:00Z"),
/// 			MaintainEndTime:   pulumi.String("20:00Z"),
/// 			IpWhite:           pulumi.String("127.0.0.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cassandra.NewDataCenter(ctx, "default", &cassandra.DataCenterArgs{
/// 			ClusterId:      _default.ID(),
/// 			DataCenterName: pulumi.String("dc-2"),
/// 			AutoRenew:      pulumi.Bool(false),
/// 			InstanceType:   pulumi.String("cassandra.c.large"),
/// 			NodeCount:      pulumi.Int(2),
/// 			PayType:        pulumi.String("PayAsYouGo"),
/// 			VswitchId:      pulumi.String("vsw-xxxx2"),
/// 			DiskSize:       pulumi.Int(160),
/// 			DiskType:       pulumi.String("cloud_ssd"),
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
/// import com.pulumi.alicloud.cassandra.Cluster;
/// import com.pulumi.alicloud.cassandra.ClusterArgs;
/// import com.pulumi.alicloud.cassandra.DataCenter;
/// import com.pulumi.alicloud.cassandra.DataCenterArgs;
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
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .clusterName("cassandra-cluster-name-tf")
///             .dataCenterName("dc-1")
///             .autoRenew(false)
///             .instanceType("cassandra.c.large")
///             .majorVersion("3.11")
///             .nodeCount(2)
///             .payType("PayAsYouGo")
///             .vswitchId("vsw-xxxx1")
///             .diskSize(160)
///             .diskType("cloud_ssd")
///             .maintainStartTime("18:00Z")
///             .maintainEndTime("20:00Z")
///             .ipWhite("127.0.0.1")
///             .build());
///
///         var defaultDataCenter = new DataCenter("defaultDataCenter", DataCenterArgs.builder()
///             .clusterId(default_.id())
///             .dataCenterName("dc-2")
///             .autoRenew(false)
///             .instanceType("cassandra.c.large")
///             .nodeCount(2)
///             .payType("PayAsYouGo")
///             .vswitchId("vsw-xxxx2")
///             .diskSize(160)
///             .diskType("cloud_ssd")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:cassandra:Cluster
///     properties:
///       clusterName: cassandra-cluster-name-tf
///       dataCenterName: dc-1
///       autoRenew: 'false'
///       instanceType: cassandra.c.large
///       majorVersion: '3.11'
///       nodeCount: '2'
///       payType: PayAsYouGo
///       vswitchId: vsw-xxxx1
///       diskSize: '160'
///       diskType: cloud_ssd
///       maintainStartTime: 18:00Z
///       maintainEndTime: 20:00Z
///       ipWhite: 127.0.0.1
///   defaultDataCenter:
///     type: alicloud:cassandra:DataCenter
///     name: default
///     properties:
///       clusterId: ${default.id}
///       dataCenterName: dc-2
///       autoRenew: 'false'
///       instanceType: cassandra.c.large
///       nodeCount: '2'
///       payType: PayAsYouGo
///       vswitchId: vsw-xxxx2
///       diskSize: '160'
///       diskType: cloud_ssd
/// ```
///
///
/// This is a example for class netType dataCenter. You can find more detail with the examples/cassandra_data_center dir.
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// If you need full function, please import Cassandra cluster first.
///
/// Cassandra dataCenter can be imported using the dcId:clusterId, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cassandra/dataCenter:DataCenter dc_2 cn-shenxxxx-x:cds-wz933ryoaurxxxxx
/// ```
class DataCenter extends pulumi.CustomResource {
  /// Auto renew of dataCenter-2,`true` or `false`. System default to `false`, valid when pay_type = Subscription.
  late final pulumi.Output<bool?> autoRenew;
  /// Period of dataCenter-2 auto renew, if auto renew is `true`, one of `1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 60`, valid when pay_type = Subscription. Unit: month.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// Cassandra cluster id of dataCenter-2 belongs to.
  late final pulumi.Output<String> clusterId;
  late final pulumi.Output<String> dataCenterId;
  /// Cassandra dataCenter-2 name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  late final pulumi.Output<String?> dataCenterName;
  /// User-defined Cassandra dataCenter one core node's storage space.Unit: GB. Value range:
  /// - Custom storage space; value range: [160, 2000].
  /// - 80-GB increments.
  late final pulumi.Output<int?> diskSize;
  /// The disk type of Cassandra dataCenter-2. Valid values are `cloud_ssd`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`, local_disk size is fixed.
  late final pulumi.Output<String?> diskType;
  late final pulumi.Output<bool?> enablePublic;
  /// Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/157445.html). Or you can call describeInstanceType api.
  late final pulumi.Output<String> instanceType;
  /// The node count of Cassandra dataCenter-2, default to 2.
  late final pulumi.Output<int> nodeCount;
  /// The pay type of Cassandra dataCenter-2. Valid values are `Subscription`, `PayAsYouGo`. System default to `PayAsYouGo`.
  late final pulumi.Output<String> payType;
  late final pulumi.Output<int?> period;
  late final pulumi.Output<String?> periodUnit;
  late final pulumi.Output<List<String>> publicPoints;
  late final pulumi.Output<String> status;
  /// The vswitch_id of dataCenter-2, mast different of vswitch_id(dc-1), can not empty.
  ///
  /// > **NOTE:** Now data_center_name,instance_type,node_count,disk_type,disk_size can be change. The others(auto_renew, auto_renew_period and so on) will be supported in the furture.
  late final pulumi.Output<String> vswitchId;
  /// The Zone to launch the Cassandra dataCenter-2. If vswitch_id is not empty, this zone_id can be "" or consistent.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DataCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCenter]. {@macro pulumi_cassandra_data_center_data_center_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCenter(
    String name, {
    DataCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cassandra/dataCenter:DataCenter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    this.clusterId = registerOutput<String>('clusterId');
    this.dataCenterId = registerOutput<String>('dataCenterId');
    this.dataCenterName = registerOutput<String?>('dataCenterName');
    this.diskSize = registerOutput<int?>('diskSize');
    this.diskType = registerOutput<String?>('diskType');
    this.enablePublic = registerOutput<bool?>('enablePublic');
    this.instanceType = registerOutput<String>('instanceType');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.payType = registerOutput<String>('payType');
    this.period = registerOutput<int?>('period');
    this.periodUnit = registerOutput<String?>('periodUnit');
    this.publicPoints = registerOutput<List<String>>('publicPoints');
    this.status = registerOutput<String>('status');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
