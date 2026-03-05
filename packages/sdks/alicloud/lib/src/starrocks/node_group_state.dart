// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NodeGroup resources.
class NodeGroupState {
  /// Whether auto-renewal is enabled.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<bool>? autoRenew;
  /// The creation time of the node group.
  final pulumi.Input<String>? createTime;
  /// Number of CUs. CU (Compute Unit) is the basic unit of service measurement, where 1 CU = 1 vCPU + 4 GiB memory. When SpecType is memory-optimized, 1 CU = 1 vCPU + 8 GiB memory.
  final pulumi.Input<int>? cu;
  /// Description of node group.
  final pulumi.Input<String>? description;
  /// Number of disks.
  final pulumi.Input<int>? diskNumber;
  /// Duration of node group.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? duration;
  /// Whether to restart in fast restart mode. The default is false.
  /// - true: Reboots the compute node in fast restart mode. Restart computing nodes in multiple batches, restart in parallel within a batch, and execute serially between batches;
  /// - false: Restarts the compute node in rolling restart mode.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<bool>? fastMode;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// Node group local SSD instance specification. This value is only relevant when based on ECS instances and SpecType is set to local SSD/large-scale storage.
  final pulumi.Input<String>? localStorageInstanceType;
  /// The ID of the node group.
  final pulumi.Input<String>? nodeGroupId;
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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? pricingCycle;
  final pulumi.Input<String>? promotionOptionNo;
  /// The region ID of the node group.
  final pulumi.Input<String>? regionId;
  /// Number of nodes.
  final pulumi.Input<int>? residentNodeNumber;
  /// Node group spec types include the following:
  /// - standard: Standard edition.
  /// - localSSD: Local SSD.
  /// - bigData: Large-scale storage.
  /// - ramEnhanced: Memory-enhanced type.
  /// - networkEnhanced: Network-enhanced type.
  final pulumi.Input<String>? specType;
  /// Node group status, including the following values:_FAILED: Creation failed._CONFIG: Modifying configuration._TIMEZONE: Modifying timezone._SCALING_OUT: Elastic scaling out._SCALING_IN: Elastic scaling in._OUT: Scaling out._IN: Scaling in._UP: Scaling up (upgrading configuration)._DOWN: Scaling down (downgrading configuration)._PUBLIC_NETWORK: Enabling public network._PUBLIC_NETWORK: Disabling public network._AZ: Switching availability zones.
  final pulumi.Input<String>? status;
  /// Performance levels of the cloud disk. Includes the following values:
  /// - pl0: Maximum random read/write IOPS of a single disk is 10,000.
  /// - pl1: Maximum random read/write IOPS of a single disk is 50,000.
  /// - pl2: Maximum random read/write IOPS of a single disk is 100,000.
  /// - pl3: Maximum random read/write IOPS of a single disk is 1,000,000.
  final pulumi.Input<String>? storagePerformanceLevel;
  /// Storage size, measured in GiB.
  final pulumi.Input<int>? storageSize;

  /// Creates a new [NodeGroupState].
  /// [autoRenew] Whether auto-renewal is enabled.
  /// [createTime] The creation time of the node group.
  /// [cu] Number of CUs. CU (Compute Unit) is the basic unit of service measurement, where 1 CU = 1 vCPU + 4 GiB memory. When SpecType is memory-optimized, 1 CU = 1 vCPU + 8 GiB memory.
  /// [description] Description of node group.
  /// [diskNumber] Number of disks.
  /// [duration] Duration of node group.
  /// [fastMode] Whether to restart in fast restart mode. The default is false.
  /// [instanceId] The ID of the instance.
  /// [localStorageInstanceType] Node group local SSD instance specification. This value is only relevant when based on ECS instances and SpecType is set to local SSD/large-scale storage.
  /// [nodeGroupId] The ID of the node group.
  /// [nodeGroupName] The name of the node group.
  /// [payType] Payment type:
  /// [pricingCycle] Unit of purchase duration:
  /// [promotionOptionNo] Optional.
  /// [regionId] The region ID of the node group.
  /// [residentNodeNumber] Number of nodes.
  /// [specType] Node group spec types include the following:
  /// [status] Node group status, including the following values:_FAILED: Creation failed._CONFIG: Modifying configuration._TIMEZONE: Modifying timezone._SCALING_OUT: Elastic scaling out._SCALING_IN: Elastic scaling in._OUT: Scaling out._IN: Scaling in._UP: Scaling up (upgrading configuration)._DOWN: Scaling down (downgrading configuration)._PUBLIC_NETWORK: Enabling public network._PUBLIC_NETWORK: Disabling public network._AZ: Switching availability zones.
  /// [storagePerformanceLevel] Performance levels of the cloud disk. Includes the following values:
  /// [storageSize] Storage size, measured in GiB.
  NodeGroupState({
    this.autoRenew,
    this.createTime,
    this.cu,
    this.description,
    this.diskNumber,
    this.duration,
    this.fastMode,
    this.instanceId,
    this.localStorageInstanceType,
    this.nodeGroupId,
    this.nodeGroupName,
    this.payType,
    this.pricingCycle,
    this.promotionOptionNo,
    this.regionId,
    this.residentNodeNumber,
    this.specType,
    this.status,
    this.storagePerformanceLevel,
    this.storageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'createTime': ?createTime,
      'cu': ?cu,
      'description': ?description,
      'diskNumber': ?diskNumber,
      'duration': ?duration,
      'fastMode': ?fastMode,
      'instanceId': ?instanceId,
      'localStorageInstanceType': ?localStorageInstanceType,
      'nodeGroupId': ?nodeGroupId,
      'nodeGroupName': ?nodeGroupName,
      'payType': ?payType,
      'pricingCycle': ?pricingCycle,
      'promotionOptionNo': ?promotionOptionNo,
      'regionId': ?regionId,
      'residentNodeNumber': ?residentNodeNumber,
      'specType': ?specType,
      'status': ?status,
      'storagePerformanceLevel': ?storagePerformanceLevel,
      'storageSize': ?storageSize,
    };
  }

  factory NodeGroupState.fromMap(Map<String, dynamic> map) {
    return NodeGroupState(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cu: (() { final guardedValue = map['cu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskNumber: (() { final guardedValue = map['diskNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fastMode: (() { final guardedValue = map['fastMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localStorageInstanceType: (() { final guardedValue = map['localStorageInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupId: (() { final guardedValue = map['nodeGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupName: (() { final guardedValue = map['nodeGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payType: (() { final guardedValue = map['payType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pricingCycle: (() { final guardedValue = map['pricingCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionOptionNo: (() { final guardedValue = map['promotionOptionNo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      residentNodeNumber: (() { final guardedValue = map['residentNodeNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      specType: (() { final guardedValue = map['specType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePerformanceLevel: (() { final guardedValue = map['storagePerformanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSize: (() { final guardedValue = map['storageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

