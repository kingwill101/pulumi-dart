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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? billingCycle;

  /// Classification
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? classify;

  /// Cluster id
  final pulumi.Input<String>? clusterId;

  /// Node Model
  final pulumi.Input<String>? computingServer;

  /// The data disk of the cloud disk to be attached to the node. See `data_disk` below.
  final pulumi.Input<List<NodeDataDisk>>? dataDisks;

  /// Offer Information
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? paymentRatio;

  /// The payment method of the node. Value range: Subscription: fixed fee installment; PayAsYouGo: pay by volume.
  /// The default is Subscription.
  final pulumi.Input<String>? paymentType;

  /// Prepaid cycle. The unit is Month, please enter an integer multiple of 12 for the annual payment product.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? period;

  /// Form
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? productForm;

  /// Automatic renewal period, in months.
  ///
  /// &gt; **NOTE:**  When setting `RenewalStatus` to `AutoRenewal`, it must be set.
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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? serverArch;

  /// Number of stages
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
      'dataDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodeDataDisk>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<NodeDataDisk, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'discountLevel': ?discountLevel,
      'hostname': ?hostname,
      'hpnZone': ?hpnZone,
      'installPai': ?installPai,
      'ipAllocationPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodeIpAllocationPolicy>,
            List<Map<String, dynamic>>
          >(
            ipAllocationPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  NodeIpAllocationPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      billingCycle: (() {
        final guardedValue = map['billingCycle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      classify: (() {
        final guardedValue = map['classify'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computingServer: (() {
        final guardedValue = map['computingServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataDisks: (() {
        final guardedValue = map['dataDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NodeDataDisk>(
            guardedValue,
            (value) =>
                NodeDataDisk.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      discountLevel: (() {
        final guardedValue = map['discountLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostname: (() {
        final guardedValue = map['hostname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hpnZone: (() {
        final guardedValue = map['hpnZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      installPai: (() {
        final guardedValue = map['installPai'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipAllocationPolicies: (() {
        final guardedValue = map['ipAllocationPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NodeIpAllocationPolicy>(
            guardedValue,
            (value) => NodeIpAllocationPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      loginPassword: (() {
        final guardedValue = map['loginPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machineType: (() {
        final guardedValue = map['machineType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeGroupId: (() {
        final guardedValue = map['nodeGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeType: (() {
        final guardedValue = map['nodeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentRatio: (() {
        final guardedValue = map['paymentRatio'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      productForm: (() {
        final guardedValue = map['productForm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renewPeriod: (() {
        final guardedValue = map['renewPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      renewalStatus: (() {
        final guardedValue = map['renewalStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverArch: (() {
        final guardedValue = map['serverArch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stageNum: (() {
        final guardedValue = map['stageNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      userData: (() {
        final guardedValue = map['userData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
