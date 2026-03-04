import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_args.dart';
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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> billingCycle;

  /// Classification
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> classify;

  /// Cluster id
  late final pulumi.Output<String> clusterId;

  /// Node Model
  late final pulumi.Output<String> computingServer;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// The data disk of the cloud disk to be attached to the node. See `data_disk` below.
  late final pulumi.Output<List<Map<String, dynamic>>> dataDisks;

  /// Offer Information
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> discountLevel;

  /// Host name
  late final pulumi.Output<String> hostname;

  /// Cluster Number
  late final pulumi.Output<String?> hpnZone;

  /// Whether to buy PAI. default value `false`.
  late final pulumi.Output<bool?> installPai;

  /// IP address combination policy: only one policy type can be selected for each policy, and multiple policies can be combined. See `ip_allocation_policy` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipAllocationPolicies;

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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> paymentRatio;

  /// The payment method of the node. Value range: Subscription: fixed fee installment; PayAsYouGo: pay by volume.
  /// The default is Subscription.
  late final pulumi.Output<String> paymentType;

  /// Prepaid cycle. The unit is Month, please enter an integer multiple of 12 for the annual payment product.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> period;

  /// Form
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> productForm;

  /// The region ID of the resource
  late final pulumi.Output<String> regionId;

  /// Automatic renewal period, in months.
  ///
  /// &gt; **NOTE:**  When setting `RenewalStatus` to `AutoRenewal`, it must be set.
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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> serverArch;

  /// Number of stages
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
  Node(String name, {NodeArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:eflo/node:Node',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    billingCycle = registerOutput<String?>('billingCycle');
    classify = registerOutput<String?>('classify');
    clusterId = registerOutput<String>('clusterId');
    computingServer = registerOutput<String>('computingServer');
    createTime = registerOutput<String>('createTime');
    dataDisks = registerOutput<List<Map<String, dynamic>>>('dataDisks');
    discountLevel = registerOutput<String?>('discountLevel');
    hostname = registerOutput<String>('hostname');
    hpnZone = registerOutput<String?>('hpnZone');
    installPai = registerOutput<bool?>('installPai');
    ipAllocationPolicies = registerOutput<List<Map<String, dynamic>>?>(
      'ipAllocationPolicies',
    );
    loginPassword = registerOutput<String?>('loginPassword');
    machineType = registerOutput<String>('machineType');
    nodeGroupId = registerOutput<String>('nodeGroupId');
    nodeType = registerOutput<String>('nodeType');
    paymentRatio = registerOutput<String?>('paymentRatio');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    productForm = registerOutput<String?>('productForm');
    regionId = registerOutput<String>('regionId');
    renewPeriod = registerOutput<int?>('renewPeriod');
    renewalStatus = registerOutput<String?>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    serverArch = registerOutput<String?>('serverArch');
    stageNum = registerOutput<String?>('stageNum');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    userData = registerOutput<String>('userData');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [Node] resource's state with the given [name] and [id].
  static Node get(String name, pulumi.Input<String> id, {NodeState? state}) {
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
    billingCycle = registerOutput<String?>('billingCycle');
    classify = registerOutput<String?>('classify');
    clusterId = registerOutput<String>('clusterId');
    computingServer = registerOutput<String>('computingServer');
    createTime = registerOutput<String>('createTime');
    dataDisks = registerOutput<List<Map<String, dynamic>>>('dataDisks');
    discountLevel = registerOutput<String?>('discountLevel');
    hostname = registerOutput<String>('hostname');
    hpnZone = registerOutput<String?>('hpnZone');
    installPai = registerOutput<bool?>('installPai');
    ipAllocationPolicies = registerOutput<List<Map<String, dynamic>>?>(
      'ipAllocationPolicies',
    );
    loginPassword = registerOutput<String?>('loginPassword');
    machineType = registerOutput<String>('machineType');
    nodeGroupId = registerOutput<String>('nodeGroupId');
    nodeType = registerOutput<String>('nodeType');
    paymentRatio = registerOutput<String?>('paymentRatio');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    productForm = registerOutput<String?>('productForm');
    regionId = registerOutput<String>('regionId');
    renewPeriod = registerOutput<int?>('renewPeriod');
    renewalStatus = registerOutput<String?>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    serverArch = registerOutput<String?>('serverArch');
    stageNum = registerOutput<String?>('stageNum');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    userData = registerOutput<String>('userData');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zone = registerOutput<String?>('zone');
  }
}
