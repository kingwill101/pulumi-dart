// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_starrocks_node_group_node_group_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_starrocks_node_group_node_group_args_doc}
class NodeGroupArgs {
  /// Whether auto-renewal is enabled.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<bool>? autoRenew;
  /// Number of CUs. CU (Compute Unit) is the basic unit of service measurement, where 1 CU = 1 vCPU + 4 GiB memory. When SpecType is memory-optimized, 1 CU = 1 vCPU + 8 GiB memory.
  final pulumi.Input<int>? cu;
  /// Description of node group.
  final pulumi.Input<String>? description;
  /// Number of disks.
  final pulumi.Input<int>? diskNumber;
  /// Duration of node group.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? duration;
  /// Whether to restart in fast restart mode. The default is false.
  /// - true: Reboots the compute node in fast restart mode. Restart computing nodes in multiple batches, restart in parallel within a batch, and execute serially between batches;
  /// - false: Restarts the compute node in rolling restart mode.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<bool>? fastMode;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// Node group local SSD instance specification. This value is only relevant when based on ECS instances and SpecType is set to local SSD/large-scale storage.
  final pulumi.Input<String>? localStorageInstanceType;
  /// The name of the node group.
  final pulumi.Input<String>? nodeGroupName;
  /// Payment type:
  /// - PrePaid: Subscription (prepaid).
  /// - PostPaid: Pay-as-you-go (postpaid).
  final pulumi.Input<String>? payType;
  /// Unit of purchase duration:
  /// - Month
  /// - Year
  ///
  /// This is only applicable when payType is set to PrePaid.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? pricingCycle;
  final pulumi.Input<String>? promotionOptionNo;
  /// Number of nodes.
  final pulumi.Input<int>? residentNodeNumber;
  /// Node group spec types include the following:
  /// - standard: Standard edition.
  /// - localSSD: Local SSD.
  /// - bigData: Large-scale storage.
  /// - ramEnhanced: Memory-enhanced type.
  /// - networkEnhanced: Network-enhanced type.
  final pulumi.Input<String>? specType;
  /// Performance levels of the cloud disk. Includes the following values:
  /// - pl0: Maximum random read/write IOPS of a single disk is 10,000.
  /// - pl1: Maximum random read/write IOPS of a single disk is 50,000.
  /// - pl2: Maximum random read/write IOPS of a single disk is 100,000.
  /// - pl3: Maximum random read/write IOPS of a single disk is 1,000,000.
  final pulumi.Input<String>? storagePerformanceLevel;
  /// Storage size, measured in GiB.
  final pulumi.Input<int>? storageSize;

  /// Creates a new [NodeGroupArgs].
  /// [autoRenew] Whether auto-renewal is enabled.
  /// [cu] Number of CUs. CU (Compute Unit) is the basic unit of service measurement, where 1 CU = 1 vCPU + 4 GiB memory. When SpecType is memory-optimized, 1 CU = 1 vCPU + 8 GiB memory.
  /// [description] Description of node group.
  /// [diskNumber] Number of disks.
  /// [duration] Duration of node group.
  /// [fastMode] Whether to restart in fast restart mode. The default is false.
  /// [instanceId] The ID of the instance.
  /// [localStorageInstanceType] Node group local SSD instance specification. This value is only relevant when based on ECS instances and SpecType is set to local SSD/large-scale storage.
  /// [nodeGroupName] The name of the node group.
  /// [payType] Payment type:
  /// [pricingCycle] Unit of purchase duration:
  /// [promotionOptionNo] Optional.
  /// [residentNodeNumber] Number of nodes.
  /// [specType] Node group spec types include the following:
  /// [storagePerformanceLevel] Performance levels of the cloud disk. Includes the following values:
  /// [storageSize] Storage size, measured in GiB.
  NodeGroupArgs({
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? cu,
    pulumi.Output<String>? description,
    pulumi.Output<int>? diskNumber,
    pulumi.Output<int>? duration,
    pulumi.Output<bool>? fastMode,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? localStorageInstanceType,
    pulumi.Output<String>? nodeGroupName,
    pulumi.Output<String>? payType,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? promotionOptionNo,
    pulumi.Output<int>? residentNodeNumber,
    pulumi.Output<String>? specType,
    pulumi.Output<String>? storagePerformanceLevel,
    pulumi.Output<int>? storageSize,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      cu = pulumi.Input.asOptionalInput<int>(cu),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskNumber = pulumi.Input.asOptionalInput<int>(diskNumber),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      fastMode = pulumi.Input.asOptionalInput<bool>(fastMode),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      localStorageInstanceType = pulumi.Input.asOptionalInput<String>(localStorageInstanceType),
      nodeGroupName = pulumi.Input.asOptionalInput<String>(nodeGroupName),
      payType = pulumi.Input.asOptionalInput<String>(payType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      promotionOptionNo = pulumi.Input.asOptionalInput<String>(promotionOptionNo),
      residentNodeNumber = pulumi.Input.asOptionalInput<int>(residentNodeNumber),
      specType = pulumi.Input.asOptionalInput<String>(specType),
      storagePerformanceLevel = pulumi.Input.asOptionalInput<String>(storagePerformanceLevel),
      storageSize = pulumi.Input.asOptionalInput<int>(storageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'cu': ?cu,
      'description': ?description,
      'diskNumber': ?diskNumber,
      'duration': ?duration,
      'fastMode': ?fastMode,
      'instanceId': ?instanceId,
      'localStorageInstanceType': ?localStorageInstanceType,
      'nodeGroupName': ?nodeGroupName,
      'payType': ?payType,
      'pricingCycle': ?pricingCycle,
      'promotionOptionNo': ?promotionOptionNo,
      'residentNodeNumber': ?residentNodeNumber,
      'specType': ?specType,
      'storagePerformanceLevel': ?storagePerformanceLevel,
      'storageSize': ?storageSize,
    };
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      cu: map['cu'] == null ? null : pulumi.Output.create<int>(map['cu'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskNumber: map['diskNumber'] == null ? null : pulumi.Output.create<int>(map['diskNumber'] as int),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      fastMode: map['fastMode'] == null ? null : pulumi.Output.create<bool>(map['fastMode'] as bool),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      localStorageInstanceType: map['localStorageInstanceType'] == null ? null : pulumi.Output.create<String>(map['localStorageInstanceType'] as String),
      nodeGroupName: map['nodeGroupName'] == null ? null : pulumi.Output.create<String>(map['nodeGroupName'] as String),
      payType: map['payType'] == null ? null : pulumi.Output.create<String>(map['payType'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      promotionOptionNo: map['promotionOptionNo'] == null ? null : pulumi.Output.create<String>(map['promotionOptionNo'] as String),
      residentNodeNumber: map['residentNodeNumber'] == null ? null : pulumi.Output.create<int>(map['residentNodeNumber'] as int),
      specType: map['specType'] == null ? null : pulumi.Output.create<String>(map['specType'] as String),
      storagePerformanceLevel: map['storagePerformanceLevel'] == null ? null : pulumi.Output.create<String>(map['storagePerformanceLevel'] as String),
      storageSize: map['storageSize'] == null ? null : pulumi.Output.create<int>(map['storageSize'] as int),
    );
  }
}

