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
    bool? autoRenew,
    int? cu,
    String? description,
    int? diskNumber,
    int? duration,
    bool? fastMode,
    String? instanceId,
    String? localStorageInstanceType,
    String? nodeGroupName,
    String? payType,
    String? pricingCycle,
    String? promotionOptionNo,
    int? residentNodeNumber,
    String? specType,
    String? storagePerformanceLevel,
    int? storageSize,
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
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      cu: map['cu'] == null ? null : map['cu'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      diskNumber: map['diskNumber'] == null ? null : map['diskNumber'] as int,
      duration: map['duration'] == null ? null : map['duration'] as int,
      fastMode: map['fastMode'] == null ? null : map['fastMode'] as bool,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      localStorageInstanceType: map['localStorageInstanceType'] == null ? null : map['localStorageInstanceType'] as String,
      nodeGroupName: map['nodeGroupName'] == null ? null : map['nodeGroupName'] as String,
      payType: map['payType'] == null ? null : map['payType'] as String,
      pricingCycle: map['pricingCycle'] == null ? null : map['pricingCycle'] as String,
      promotionOptionNo: map['promotionOptionNo'] == null ? null : map['promotionOptionNo'] as String,
      residentNodeNumber: map['residentNodeNumber'] == null ? null : map['residentNodeNumber'] as int,
      specType: map['specType'] == null ? null : map['specType'] as String,
      storagePerformanceLevel: map['storagePerformanceLevel'] == null ? null : map['storagePerformanceLevel'] as String,
      storageSize: map['storageSize'] == null ? null : map['storageSize'] as int,
    );
  }
}

