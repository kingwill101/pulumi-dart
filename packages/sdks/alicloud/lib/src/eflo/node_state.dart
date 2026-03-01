// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_data_disk.dart';
import 'node_ip_allocation_policy.dart';

/// Input properties used for looking up and filtering Node resources.
class NodeState {
  /// Billing cycle
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? billingCycle;
  /// Classification
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? classify;
  /// Cluster id
  final pulumi.Input<String>? clusterId;
  /// Node Model
  final pulumi.Input<String>? computingServer;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The data disk of the cloud disk to be attached to the node. See `data_disk` below.
  final pulumi.Input<List<NodeDataDisk>>? dataDisks;
  /// Offer Information
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? discountLevel;
  /// Host name
  final pulumi.Input<String>? hostname;
  /// Cluster Number
  final pulumi.Input<String>? hpnZone;
  /// Whether to buy PAI. default value `false`.
  final pulumi.Input<bool>? installPai;
  /// IP address combination policy: only one policy type can be selected for each policy, and multiple policies can be combined. See `ip_allocation_policy` below.
  final pulumi.Input<List<NodeIpAllocationPolicy>>? ipAllocationPolicies;
  /// Login Password
  final pulumi.Input<String>? loginPassword;
  /// Model
  final pulumi.Input<String>? machineType;
  /// node group id
  final pulumi.Input<String>? nodeGroupId;
  /// node type
  final pulumi.Input<String>? nodeType;
  /// Down payment ratio
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? paymentRatio;
  /// The payment method of the node. Value range: Subscription: fixed fee installment; PayAsYouGo: pay by volume.
  /// The default is Subscription.
  final pulumi.Input<String>? paymentType;
  /// Prepaid cycle. The unit is Month, please enter an integer multiple of 12 for the annual payment product.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? period;
  /// Form
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? productForm;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// Automatic renewal period, in months.
  ///
  /// > **NOTE:**  When setting `RenewalStatus` to `AutoRenewal`, it must be set.
  final pulumi.Input<int>? renewPeriod;
  /// Automatic renewal status, value:
  /// - AutoRenewal: automatic renewal.
  /// - ManualRenewal: manual renewal.
  ///
  /// The default ManualRenewal.
  final pulumi.Input<String>? renewalStatus;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Architecture
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? serverArch;
  /// Number of stages
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? stageNum;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Custom Data
  final pulumi.Input<String>? userData;
  /// VPC ID
  final pulumi.Input<String>? vpcId;
  /// Switch ID
  final pulumi.Input<String>? vswitchId;
  /// Availability Zone
  final pulumi.Input<String>? zone;

  /// Creates a new [NodeState].
  /// [billingCycle] Billing cycle
  /// [classify] Classification
  /// [clusterId] Cluster id
  /// [computingServer] Node Model
  /// [createTime] The creation time of the resource
  /// [dataDisks] The data disk of the cloud disk to be attached to the node. See `data_disk` below.
  /// [discountLevel] Offer Information
  /// [hostname] Host name
  /// [hpnZone] Cluster Number
  /// [installPai] Whether to buy PAI. default value `false`.
  /// [ipAllocationPolicies] IP address combination policy: only one policy type can be selected for each policy, and multiple policies can be combined. See `ip_allocation_policy` below.
  /// [loginPassword] Login Password
  /// [machineType] Model
  /// [nodeGroupId] node group id
  /// [nodeType] node type
  /// [paymentRatio] Down payment ratio
  /// [paymentType] The payment method of the node. Value range: Subscription: fixed fee installment; PayAsYouGo: pay by volume.
  /// [period] Prepaid cycle. The unit is Month, please enter an integer multiple of 12 for the annual payment product.
  /// [productForm] Form
  /// [regionId] The region ID of the resource
  /// [renewPeriod] Automatic renewal period, in months.
  /// [renewalStatus] Automatic renewal status, value:
  /// [resourceGroupId] The ID of the resource group
  /// [serverArch] Architecture
  /// [stageNum] Number of stages
  /// [status] The status of the resource
  /// [tags] The tag of the resource
  /// [userData] Custom Data
  /// [vpcId] VPC ID
  /// [vswitchId] Switch ID
  /// [zone] Availability Zone
  NodeState({
    pulumi.Output<String>? billingCycle,
    pulumi.Output<String>? classify,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? computingServer,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<NodeDataDisk>>? dataDisks,
    pulumi.Output<String>? discountLevel,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? hpnZone,
    pulumi.Output<bool>? installPai,
    pulumi.Output<List<NodeIpAllocationPolicy>>? ipAllocationPolicies,
    pulumi.Output<String>? loginPassword,
    pulumi.Output<String>? machineType,
    pulumi.Output<String>? nodeGroupId,
    pulumi.Output<String>? nodeType,
    pulumi.Output<String>? paymentRatio,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? productForm,
    pulumi.Output<String>? regionId,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? serverArch,
    pulumi.Output<String>? stageNum,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zone,
  }) :
      billingCycle = pulumi.Input.asOptionalInput<String>(billingCycle),
      classify = pulumi.Input.asOptionalInput<String>(classify),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      computingServer = pulumi.Input.asOptionalInput<String>(computingServer),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataDisks = pulumi.Input.asOptionalInput<List<NodeDataDisk>>(dataDisks),
      discountLevel = pulumi.Input.asOptionalInput<String>(discountLevel),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      hpnZone = pulumi.Input.asOptionalInput<String>(hpnZone),
      installPai = pulumi.Input.asOptionalInput<bool>(installPai),
      ipAllocationPolicies = pulumi.Input.asOptionalInput<List<NodeIpAllocationPolicy>>(ipAllocationPolicies),
      loginPassword = pulumi.Input.asOptionalInput<String>(loginPassword),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      nodeGroupId = pulumi.Input.asOptionalInput<String>(nodeGroupId),
      nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
      paymentRatio = pulumi.Input.asOptionalInput<String>(paymentRatio),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      productForm = pulumi.Input.asOptionalInput<String>(productForm),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serverArch = pulumi.Input.asOptionalInput<String>(serverArch),
      stageNum = pulumi.Input.asOptionalInput<String>(stageNum),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCycle': ?billingCycle,
      'classify': ?classify,
      'clusterId': ?clusterId,
      'computingServer': ?computingServer,
      'createTime': ?createTime,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<NodeDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<NodeDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discountLevel': ?discountLevel,
      'hostname': ?hostname,
      'hpnZone': ?hpnZone,
      'installPai': ?installPai,
      'ipAllocationPolicies': ?pulumi.Input.mapOptionalInputValue<List<NodeIpAllocationPolicy>, List<Map<String, dynamic>>>(ipAllocationPolicies, (value) => pulumi.Input.encodeList<NodeIpAllocationPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loginPassword': ?loginPassword,
      'machineType': ?machineType,
      'nodeGroupId': ?nodeGroupId,
      'nodeType': ?nodeType,
      'paymentRatio': ?paymentRatio,
      'paymentType': ?paymentType,
      'period': ?period,
      'productForm': ?productForm,
      'regionId': ?regionId,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'serverArch': ?serverArch,
      'stageNum': ?stageNum,
      'status': ?status,
      'tags': ?tags,
      'userData': ?userData,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zone': ?zone,
    };
  }

  factory NodeState.fromMap(Map<String, dynamic> map) {
    return NodeState(
      billingCycle: map['billingCycle'] == null ? null : pulumi.Output.create<String>(map['billingCycle'] as String),
      classify: map['classify'] == null ? null : pulumi.Output.create<String>(map['classify'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      computingServer: map['computingServer'] == null ? null : pulumi.Output.create<String>(map['computingServer'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<NodeDataDisk>>(pulumi.Input.decodeList<NodeDataDisk>(map['dataDisks'], (value) => NodeDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      discountLevel: map['discountLevel'] == null ? null : pulumi.Output.create<String>(map['discountLevel'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      hpnZone: map['hpnZone'] == null ? null : pulumi.Output.create<String>(map['hpnZone'] as String),
      installPai: map['installPai'] == null ? null : pulumi.Output.create<bool>(map['installPai'] as bool),
      ipAllocationPolicies: map['ipAllocationPolicies'] == null ? null : pulumi.Output.create<List<NodeIpAllocationPolicy>>(pulumi.Input.decodeList<NodeIpAllocationPolicy>(map['ipAllocationPolicies'], (value) => NodeIpAllocationPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      loginPassword: map['loginPassword'] == null ? null : pulumi.Output.create<String>(map['loginPassword'] as String),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      nodeGroupId: map['nodeGroupId'] == null ? null : pulumi.Output.create<String>(map['nodeGroupId'] as String),
      nodeType: map['nodeType'] == null ? null : pulumi.Output.create<String>(map['nodeType'] as String),
      paymentRatio: map['paymentRatio'] == null ? null : pulumi.Output.create<String>(map['paymentRatio'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      productForm: map['productForm'] == null ? null : pulumi.Output.create<String>(map['productForm'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      serverArch: map['serverArch'] == null ? null : pulumi.Output.create<String>(map['serverArch'] as String),
      stageNum: map['stageNum'] == null ? null : pulumi.Output.create<String>(map['stageNum'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

