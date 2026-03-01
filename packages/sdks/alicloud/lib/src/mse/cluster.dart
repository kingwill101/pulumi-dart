import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_state.dart';

/// ## Import
///
/// MSE Cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mse/cluster:Cluster example mse-cn-0d9xxxx
/// ```
class Cluster extends pulumi.CustomResource {
  /// The whitelist. **NOTE:** This attribute is invalid when the value of `pub_network_flow` is `0` and the value of `net_type` is `privatenet`.
  late final pulumi.Output<List<String>?> aclEntryLists;
  /// (Available since v1.205.0) The application version.
  late final pulumi.Output<String> appVersion;
  /// The alias of MSE Cluster.
  late final pulumi.Output<String> clusterAliasName;
  /// (Available since v1.162.0) The cluster id of Cluster.
  late final pulumi.Output<String> clusterId;
  /// The engine specification of MSE Cluster. **NOTE:** From version 1.188.0, `cluster_specification` can be modified. If you were an international user, please use the specification version ending with `_200_c`.Valid values:
  /// - Professional Edition
  /// - `MSE_SC_1_2_60_c`: 1C2G
  /// - `MSE_SC_2_4_60_c`: 2C4G
  /// - `MSE_SC_4_8_60_c`: 4C8G
  /// - `MSE_SC_8_16_60_c`: 8C16G
  /// - `MSE_SC_16_32_60_c`:16C32G
  /// - `MSE_SC_1_2_200_c`: 1C2G
  /// - `MSE_SC_2_4_200_c`: 2C4G
  /// - `MSE_SC_4_8_200_c`: 4C8G
  /// - `MSE_SC_8_16_200_c`: 8C16G
  /// - `MSE_SC_16_32_200_c`:16C32G
  /// - Developer Edition
  /// - `MSE_SC_1_2_60_c`: 1C2G
  /// - `MSE_SC_2_4_60_c`: 2C4G
  /// - `MSE_SC_1_2_200_c`: 1C2G
  /// - `MSE_SC_2_4_200_c`: 2C4G
  /// - Serverless Edition
  /// - `MSE_SC_SERVERLESS`: Available since v1.232.0
  late final pulumi.Output<String> clusterSpecification;
  /// The type of MSE Cluster.
  late final pulumi.Output<String> clusterType;
  /// The version of MSE Cluster. See [details](https://www.alibabacloud.com/help/en/mse/developer-reference/api-mse-2019-05-31-createcluster)
  late final pulumi.Output<String> clusterVersion;
  /// The connection type. Valid values: `slb`,`single_eni`(Available since v1.232.0). If your region is one of `ap-southeast-6、us-west-1、eu-central-1、us-east-1、ap-southeast-1`,and your cluster's mse_version is `mse_dev`,please use `single_eni`.
  late final pulumi.Output<String> connectionType;
  /// The type of Disk.
  late final pulumi.Output<String?> diskType;
  /// The count of instance. **NOTE:** From version 1.188.0, `instance_count` can be modified.
  late final pulumi.Output<int> instanceCount;
  /// The version of MSE. Valid values: `mse_dev` or `mse_pro` or `mse_serverless`(Available since v1.232.0).
  late final pulumi.Output<String> mseVersion;
  /// The type of network. Valid values: `privatenet` and `pubnet` and `both`(Available since v1.232.0).
  late final pulumi.Output<String> netType;
  /// Payment type: Subscription (prepaid), PayAsYouGo (postpaid). Default PayAsYouGo.
  late final pulumi.Output<String> paymentType;
  /// The specification of private network SLB.
  late final pulumi.Output<String?> privateSlbSpecification;
  /// The public network bandwidth.
  late final pulumi.Output<String> pubNetworkFlow;
  /// The specification of public network SLB. Serverless Instance could ignore this parameter.
  late final pulumi.Output<String?> pubSlbSpecification;
  /// The extended request parameters in the JSON format.
  late final pulumi.Output<String?> requestPars;
  /// The resource group of the resource.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of MSE Cluster.
  late final pulumi.Output<String> status;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The version code of MSE Cluster. You can keep the instance version up to date by setting the value to `LATEST` (Available since v1.257.0).
  late final pulumi.Output<String> versionCode;
  /// The id of the VPC.
  late final pulumi.Output<String> vpcId;
  /// The id of VSwitch.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_mse_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mse/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclEntryLists = registerOutput<List<String>?>('aclEntryLists');
    this.appVersion = registerOutput<String>('appVersion');
    this.clusterAliasName = registerOutput<String>('clusterAliasName');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterSpecification = registerOutput<String>('clusterSpecification');
    this.clusterType = registerOutput<String>('clusterType');
    this.clusterVersion = registerOutput<String>('clusterVersion');
    this.connectionType = registerOutput<String>('connectionType');
    this.diskType = registerOutput<String?>('diskType');
    this.instanceCount = registerOutput<int>('instanceCount');
    this.mseVersion = registerOutput<String>('mseVersion');
    this.netType = registerOutput<String>('netType');
    this.paymentType = registerOutput<String>('paymentType');
    this.privateSlbSpecification = registerOutput<String?>('privateSlbSpecification');
    this.pubNetworkFlow = registerOutput<String>('pubNetworkFlow');
    this.pubSlbSpecification = registerOutput<String?>('pubSlbSpecification');
    this.requestPars = registerOutput<String?>('requestPars');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.versionCode = registerOutput<String>('versionCode');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
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
          'alicloud:mse/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclEntryLists = registerOutput<List<String>?>('aclEntryLists');
    this.appVersion = registerOutput<String>('appVersion');
    this.clusterAliasName = registerOutput<String>('clusterAliasName');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterSpecification = registerOutput<String>('clusterSpecification');
    this.clusterType = registerOutput<String>('clusterType');
    this.clusterVersion = registerOutput<String>('clusterVersion');
    this.connectionType = registerOutput<String>('connectionType');
    this.diskType = registerOutput<String?>('diskType');
    this.instanceCount = registerOutput<int>('instanceCount');
    this.mseVersion = registerOutput<String>('mseVersion');
    this.netType = registerOutput<String>('netType');
    this.paymentType = registerOutput<String>('paymentType');
    this.privateSlbSpecification = registerOutput<String?>('privateSlbSpecification');
    this.pubNetworkFlow = registerOutput<String>('pubNetworkFlow');
    this.pubSlbSpecification = registerOutput<String?>('pubSlbSpecification');
    this.requestPars = registerOutput<String?>('requestPars');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.versionCode = registerOutput<String>('versionCode');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
  }
}
