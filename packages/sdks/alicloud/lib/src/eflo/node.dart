import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_args.dart';
import 'node_data_disk.dart';
import 'node_ip_allocation_policy.dart';
import 'node_state.dart';

/// ## Import
///
/// Eflo Node can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/node:Node example <id>
/// ```
class Node extends pulumi.CustomResource {
  /// Billing cycle
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> billingCycle;
  /// Classification
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> classify;
  /// Cluster id
  late final pulumi.Output<String> clusterId;
  /// Node Model
  late final pulumi.Output<String> computingServer;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// The data disk of the cloud disk to be attached to the node. See `data_disk` below.
  late final pulumi.Output<List<NodeDataDisk>> dataDisks;
  /// Offer Information
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> discountLevel;
  /// Host name
  late final pulumi.Output<String> hostname;
  /// Cluster Number
  late final pulumi.Output<String?> hpnZone;
  /// Whether to buy PAI. default value `false`.
  late final pulumi.Output<bool?> installPai;
  /// IP address combination policy: only one policy type can be selected for each policy, and multiple policies can be combined. See `ip_allocation_policy` below.
  late final pulumi.Output<List<NodeIpAllocationPolicy>?> ipAllocationPolicies;
  /// Login Password
  late final pulumi.Output<String?> loginPassword;
  /// Model
  late final pulumi.Output<String> machineType;
  /// node group id
  late final pulumi.Output<String> nodeGroupId;
  /// node type
  late final pulumi.Output<String> nodeType;
  /// Down payment ratio
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> paymentRatio;
  /// The payment method of the node. Value range: Subscription: fixed fee installment; PayAsYouGo: pay by volume.
  /// The default is Subscription.
  late final pulumi.Output<String> paymentType;
  /// Prepaid cycle. The unit is Month, please enter an integer multiple of 12 for the annual payment product.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> period;
  /// Form
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> productForm;
  /// The region ID of the resource
  late final pulumi.Output<String> regionId;
  /// Automatic renewal period, in months.
  ///
  /// > **NOTE:**  When setting `RenewalStatus` to `AutoRenewal`, it must be set.
  late final pulumi.Output<int?> renewPeriod;
  /// Automatic renewal status, value:
  /// - AutoRenewal: automatic renewal.
  /// - ManualRenewal: manual renewal.
  ///
  /// The default ManualRenewal.
  late final pulumi.Output<String?> renewalStatus;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// Architecture
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> serverArch;
  /// Number of stages
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> stageNum;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// Custom Data
  late final pulumi.Output<String> userData;
  /// VPC ID
  late final pulumi.Output<String> vpcId;
  /// Switch ID
  late final pulumi.Output<String> vswitchId;
  /// Availability Zone
  late final pulumi.Output<String?> zone;

  /// Creates a new [Node].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Node]. {@macro pulumi_eflo_node_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Node(
    String name, {
    NodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/node:Node',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.billingCycle = registerOutput<String?>('billingCycle');
    this.classify = registerOutput<String?>('classify');
    this.clusterId = registerOutput<String>('clusterId');
    this.computingServer = registerOutput<String>('computingServer');
    this.createTime = registerOutput<String>('createTime');
    this.dataDisks = registerOutput<List<NodeDataDisk>>('dataDisks');
    this.discountLevel = registerOutput<String?>('discountLevel');
    this.hostname = registerOutput<String>('hostname');
    this.hpnZone = registerOutput<String?>('hpnZone');
    this.installPai = registerOutput<bool?>('installPai');
    this.ipAllocationPolicies = registerOutput<List<NodeIpAllocationPolicy>?>('ipAllocationPolicies');
    this.loginPassword = registerOutput<String?>('loginPassword');
    this.machineType = registerOutput<String>('machineType');
    this.nodeGroupId = registerOutput<String>('nodeGroupId');
    this.nodeType = registerOutput<String>('nodeType');
    this.paymentRatio = registerOutput<String?>('paymentRatio');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.productForm = registerOutput<String?>('productForm');
    this.regionId = registerOutput<String>('regionId');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String?>('renewalStatus');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.serverArch = registerOutput<String?>('serverArch');
    this.stageNum = registerOutput<String?>('stageNum');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.userData = registerOutput<String>('userData');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [Node] resource's state with the given [name] and [id].
  static Node get(
    String name,
    pulumi.Input<String> id, {
    NodeState? state,
  }) {
    return Node._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Node._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/node:Node',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.billingCycle = registerOutput<String?>('billingCycle');
    this.classify = registerOutput<String?>('classify');
    this.clusterId = registerOutput<String>('clusterId');
    this.computingServer = registerOutput<String>('computingServer');
    this.createTime = registerOutput<String>('createTime');
    this.dataDisks = registerOutput<List<NodeDataDisk>>('dataDisks');
    this.discountLevel = registerOutput<String?>('discountLevel');
    this.hostname = registerOutput<String>('hostname');
    this.hpnZone = registerOutput<String?>('hpnZone');
    this.installPai = registerOutput<bool?>('installPai');
    this.ipAllocationPolicies = registerOutput<List<NodeIpAllocationPolicy>?>('ipAllocationPolicies');
    this.loginPassword = registerOutput<String?>('loginPassword');
    this.machineType = registerOutput<String>('machineType');
    this.nodeGroupId = registerOutput<String>('nodeGroupId');
    this.nodeType = registerOutput<String>('nodeType');
    this.paymentRatio = registerOutput<String?>('paymentRatio');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.productForm = registerOutput<String?>('productForm');
    this.regionId = registerOutput<String>('regionId');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String?>('renewalStatus');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.serverArch = registerOutput<String?>('serverArch');
    this.stageNum = registerOutput<String?>('stageNum');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.userData = registerOutput<String>('userData');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zone = registerOutput<String?>('zone');
  }
}
