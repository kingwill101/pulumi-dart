// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_data_disk.dart';
import 'node_ip_allocation_policy.dart';

/// {@template pulumi_eflo_node_node_args_doc}
/// The set of arguments for Node.
/// {@endtemplate}
/// {@macro pulumi_eflo_node_node_args_doc}
class NodeArgs {
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

  /// Creates a new [NodeArgs].
  /// [billingCycle] Billing cycle
  /// [classify] Classification
  /// [clusterId] Cluster id
  /// [computingServer] Node Model
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
  NodeArgs({
    this.billingCycle,
    this.classify,
    this.clusterId,
    this.computingServer,
    this.dataDisks,
    this.discountLevel,
    this.hostname,
    this.hpnZone,
    this.installPai,
    this.ipAllocationPolicies,
    this.loginPassword,
    this.machineType,
    this.nodeGroupId,
    this.nodeType,
    this.paymentRatio,
    this.paymentType,
    this.period,
    this.productForm,
    this.renewPeriod,
    this.renewalStatus,
    this.resourceGroupId,
    this.serverArch,
    this.stageNum,
    this.status,
    this.tags,
    this.userData,
    this.vpcId,
    this.vswitchId,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCycle': ?billingCycle,
      'classify': ?classify,
      'clusterId': ?clusterId,
      'computingServer': ?computingServer,
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

  factory NodeArgs.fromMap(Map<String, dynamic> map) {
    return NodeArgs(
      billingCycle: map['billingCycle'] == null ? null : (map['billingCycle']! as String).input(),
      classify: map['classify'] == null ? null : (map['classify']! as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      computingServer: map['computingServer'] == null ? null : (map['computingServer']! as String).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<NodeDataDisk>(map['dataDisks']!, (value) => NodeDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discountLevel: map['discountLevel'] == null ? null : (map['discountLevel']! as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      hpnZone: map['hpnZone'] == null ? null : (map['hpnZone']! as String).input(),
      installPai: map['installPai'] == null ? null : (map['installPai']! as bool).input(),
      ipAllocationPolicies: map['ipAllocationPolicies'] == null ? null : (pulumi.Input.decodeList<NodeIpAllocationPolicy>(map['ipAllocationPolicies']!, (value) => NodeIpAllocationPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loginPassword: map['loginPassword'] == null ? null : (map['loginPassword']! as String).input(),
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
      nodeGroupId: map['nodeGroupId'] == null ? null : (map['nodeGroupId']! as String).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType']! as String).input(),
      paymentRatio: map['paymentRatio'] == null ? null : (map['paymentRatio']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      productForm: map['productForm'] == null ? null : (map['productForm']! as String).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod']! as int).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      serverArch: map['serverArch'] == null ? null : (map['serverArch']! as String).input(),
      stageNum: map['stageNum'] == null ? null : (map['stageNum']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userData: map['userData'] == null ? null : (map['userData']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

