import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_state.dart';

/// Provides a Cassandra cluster resource supports replica set clusters only. The Cassandra provides stable, reliable, and automatic scalable database services.
/// It offers a full range of database solutions, such as disaster recovery, backup, recovery, monitoring, and alarms.
/// You can see detail product introduction [here](https://www.alibabacloud.com/help/product/49055.htm).
///
/// &gt; **NOTE:** Available since v1.88.0.
///
/// &gt; **NOTE:**  The following regions support create Vpc network Cassandra cluster.
/// The official website mark more regions. Or you can call [DescribeRegions](https://help.aliyun.com/document_detail/157540.html).
///
/// &gt; **NOTE:**  Create Cassandra cluster or change cluster type and storage would cost 30 minutes. Please make full preparation.
///
/// &gt; **DEPRECATED:**  This resource has been [deprecated](https://www.alibabacloud.com/help/en/apsaradb-for-cassandra/latest/cassandra-delisting-notice) from version `1.220.0`.
///
/// ## Example Usage
///
/// ### Create a cassandra cluster
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
///     vswitchId: "vsw-xxxx",
///     diskSize: 160,
///     diskType: "cloud_ssd",
///     maintainStartTime: "18:00Z",
///     maintainEndTime: "20:00Z",
///     ipWhite: "127.0.0.1",
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
///     vswitch_id="vsw-xxxx",
///     disk_size=160,
///     disk_type="cloud_ssd",
///     maintain_start_time="18:00Z",
///     maintain_end_time="20:00Z",
///     ip_white="127.0.0.1")
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
///         VswitchId = "vsw-xxxx",
///         DiskSize = 160,
///         DiskType = "cloud_ssd",
///         MaintainStartTime = "18:00Z",
///         MaintainEndTime = "20:00Z",
///         IpWhite = "127.0.0.1",
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
/// 		_, err := cassandra.NewCluster(ctx, "default", &cassandra.ClusterArgs{
/// 			ClusterName:       pulumi.String("cassandra-cluster-name-tf"),
/// 			DataCenterName:    pulumi.String("dc-1"),
/// 			AutoRenew:         pulumi.Bool(false),
/// 			InstanceType:      pulumi.String("cassandra.c.large"),
/// 			MajorVersion:      pulumi.String("3.11"),
/// 			NodeCount:         pulumi.Int(2),
/// 			PayType:           pulumi.String("PayAsYouGo"),
/// 			VswitchId:         pulumi.String("vsw-xxxx"),
/// 			DiskSize:          pulumi.Int(160),
/// 			DiskType:          pulumi.String("cloud_ssd"),
/// 			MaintainStartTime: pulumi.String("18:00Z"),
/// 			MaintainEndTime:   pulumi.String("20:00Z"),
/// 			IpWhite:           pulumi.String("127.0.0.1"),
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
///             .vswitchId("vsw-xxxx")
///             .diskSize(160)
///             .diskType("cloud_ssd")
///             .maintainStartTime("18:00Z")
///             .maintainEndTime("20:00Z")
///             .ipWhite("127.0.0.1")
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
///       vswitchId: vsw-xxxx
///       diskSize: '160'
///       diskType: cloud_ssd
///       maintainStartTime: 18:00Z
///       maintainEndTime: 20:00Z
///       ipWhite: 127.0.0.1
/// ```
///
///
/// This is a example for class netType cluster. You can find more detail with the examples/cassandra_cluster dir.
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cassandra cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cassandra/cluster:Cluster example cds-wz9sr400dd7xxxxx
/// ```
class Cluster extends pulumi.CustomResource {
  /// Auto renew of dataCenter-1,`true` or `false`. System default to `false`, valid when pay_type = PrePaid.
  late final pulumi.Output<bool?> autoRenew;

  /// Period of dataCenter-1 auto renew, if auto renew is `true`, one of `1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 60`, valid when pay_type = Subscription. Unit: month.
  late final pulumi.Output<int?> autoRenewPeriod;

  /// Cassandra cluster name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  late final pulumi.Output<String?> clusterName;

  /// Cassandra dataCenter-1 name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  late final pulumi.Output<String?> dataCenterName;

  /// User-defined Cassandra dataCenter-1 one node's storage space.Unit: GB. Value range:
  /// - Custom storage space; value range: [160, 2000].
  /// - 80-GB increments.
  late final pulumi.Output<int?> diskSize;

  /// The disk type of Cassandra dataCenter-1. Valid values are `cloud_ssd`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`, local_disk size is fixed.
  late final pulumi.Output<String?> diskType;
  late final pulumi.Output<bool?> enablePublic;

  /// Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/157445.html). Or you can call describeInstanceType api.
  late final pulumi.Output<String> instanceType;

  /// Set the instance's IP whitelist in VPC network.
  late final pulumi.Output<String> ipWhite;

  /// The end time of the operation and maintenance time period of the cluster, in the format of HH:mmZ (UTC time).
  late final pulumi.Output<String?> maintainEndTime;

  /// The start time of the operation and maintenance time period of the cluster, in the format of HH:mmZ (UTC time).
  late final pulumi.Output<String?> maintainStartTime;

  /// Cassandra major version. Now only support version `3.11`.
  late final pulumi.Output<String> majorVersion;

  /// The node count of Cassandra dataCenter-1 default to 2.
  late final pulumi.Output<int> nodeCount;
  late final pulumi.Output<String?> password;

  /// The pay type of Cassandra dataCenter-1. Valid values are `Subscription`, `PayAsYouGo`,System default to `PayAsYouGo`.
  late final pulumi.Output<String> payType;
  late final pulumi.Output<int?> period;
  late final pulumi.Output<String?> periodUnit;
  late final pulumi.Output<List<String>> publicPoints;

  /// A list of security group ids to associate with.
  ///
  /// &gt; **NOTE:** Now cluster_name,data_center_name,instance_type,node_count,disk_type,disk_size,maintain_start_time,maintain_end_time,tags,ip_white,security_groups can be change. The others(auto_renew, auto_renew_period and so on) will be supported in the furture.
  late final pulumi.Output<List<String>> securityGroups;
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The vswitch_id of dataCenter-1, can not empty.
  late final pulumi.Output<String> vswitchId;

  /// The Zone to launch the Cassandra cluster. If vswitch_id is not empty, this zone_id can be "" or consistent.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_cassandra_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cassandra/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    clusterName = registerOutput<String?>('clusterName');
    dataCenterName = registerOutput<String?>('dataCenterName');
    diskSize = registerOutput<int?>('diskSize');
    diskType = registerOutput<String?>('diskType');
    enablePublic = registerOutput<bool?>('enablePublic');
    instanceType = registerOutput<String>('instanceType');
    ipWhite = registerOutput<String>('ipWhite');
    maintainEndTime = registerOutput<String?>('maintainEndTime');
    maintainStartTime = registerOutput<String?>('maintainStartTime');
    majorVersion = registerOutput<String>('majorVersion');
    nodeCount = registerOutput<int>('nodeCount');
    password = registerOutput<String?>('password');
    payType = registerOutput<String>('payType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    publicPoints = registerOutput<List<String>>('publicPoints');
    securityGroups = registerOutput<List<String>>('securityGroups');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cassandra/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    clusterName = registerOutput<String?>('clusterName');
    dataCenterName = registerOutput<String?>('dataCenterName');
    diskSize = registerOutput<int?>('diskSize');
    diskType = registerOutput<String?>('diskType');
    enablePublic = registerOutput<bool?>('enablePublic');
    instanceType = registerOutput<String>('instanceType');
    ipWhite = registerOutput<String>('ipWhite');
    maintainEndTime = registerOutput<String?>('maintainEndTime');
    maintainStartTime = registerOutput<String?>('maintainStartTime');
    majorVersion = registerOutput<String>('majorVersion');
    nodeCount = registerOutput<int>('nodeCount');
    password = registerOutput<String?>('password');
    payType = registerOutput<String>('payType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    publicPoints = registerOutput<List<String>>('publicPoints');
    securityGroups = registerOutput<List<String>>('securityGroups');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}
