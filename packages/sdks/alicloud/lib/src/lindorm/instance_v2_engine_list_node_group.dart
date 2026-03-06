// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceV2EngineListNodeGroup {
  /// Node Type
  final pulumi.Input<String>? category;
  /// Number of CPU cores
  final pulumi.Input<int>? cpuCoreCount;
  /// Whether to mount  local cloud disks
  final pulumi.Input<bool>? enableAttachLocalDisk;
  /// Node memory size
  final pulumi.Input<int>? memorySizeGiB;
  /// Number of nodes
  final pulumi.Input<int> nodeCount;
  /// Local cloud disk storage capacity
  final pulumi.Input<int>? nodeDiskSize;
  /// Node Disk Type
  final pulumi.Input<String>? nodeDiskType;
  /// Node Specifications
  /// - Valid values when selecting cloud storage:
  /// - **lindorm.c.2xlarge**, 8 cores 16GB
  /// - **lindorm.g.2xlarge**, 8 cores 32GB
  /// - **lindorm.c.4xlarge**, 16 cores 32GB
  /// - **lindorm.g.4xlarge**, 16 cores 64GB
  /// - **lindorm.c.8xlarge**, 32 core 64GB
  /// - **lindorm.g.8xlarge**, 32 core 128GB
  /// - **lindorm.g.8xlarge**, 8 cores 64GB
  /// - **lindorm.r.4xlarge**, 16 cores 128GB
  /// - **lindorm.r.8xlarge**, 32 cores 256GB
  /// - Valid values when local disk storage is selected:
  /// - **lindorm.d2s.5XLarge**, 20 core 88GB(D2S)
  /// - **lindorm.d2s.10XLarge**, 40 core 176GB(D2S)
  /// - **lindorm.d2c.6XLarge**, 24 core 88GB(D2C)
  /// - **lindorm.d2c.12XLarge**, 48 cores 176GB(D2C)
  /// - **lindorm.d2C.24XLarge**, 96 core 352GB(D2C)
  /// - **lindorm.d1.2xlarge**, 8 cores 32GB(D1NE)
  /// - **lindorm.d1.4xlarge**, 16 cores 64GB(D1NE)
  /// - **lindorm.d1.6xlarge**, 24 cores 96GB(D1NE)
  /// - **lindorm.sd3c.3XLarge**, 14 cores 56GB(D3C PRO)
  /// - **lindorm.sd3c.7XLarge**, 28 core 112GB(D3C PRO)
  /// - **lindorm.sd3c.14XLarge**, 56 core 224GB(D3C PRO)
  /// - **lindorm.d3s.2XLarge**, 8 core 32GB(D3S)
  /// - **lindorm.d3s.4XLarge**, 16 cores 64GB(D3S)
  /// - **lindorm.d3s.8XLarge**, 32 core 128GB(D3S)
  /// - **lindorm.d3s.12XLarge**, 48 cores 192GB(D3S)
  /// - **lindorm.d3s.16XLarge**, 64 cores 256GB(D3S)
  /// - **lindorm.i4.xlarge**, 4 core 32GB(I4)
  /// - **lindorm.i4.2xlarge**, 8 core 64GB(I4)
  /// - **lindorm.i4.4xlarge**, 16 cores 128GB(I4)
  /// - **lindorm.i4.8xlarge**, 32 cores 256GB(I4)
  /// - **lindorm.i2.xlarge**, 4 core 32GB(I2)
  /// - **lindorm.i2.2xlarge**, 8 core 64GB(I2)
  /// - **lindorm.i2.4xlarge**, 16 cores 128GB(I2)
  /// - **lindorm.i2.8xlarge**, 32 cores 256GB(I2)
  final pulumi.Input<String> nodeSpec;
  /// Resource group name
  final pulumi.Input<String> resourceGroupName;
  /// Spec Id
  final pulumi.Input<String>? specId;
  /// Node Status
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceV2EngineListNodeGroup].
  /// [category] Node Type
  /// [cpuCoreCount] Number of CPU cores
  /// [enableAttachLocalDisk] Whether to mount  local cloud disks
  /// [memorySizeGiB] Node memory size
  /// [nodeCount] Number of nodes
  /// [nodeDiskSize] Local cloud disk storage capacity
  /// [nodeDiskType] Node Disk Type
  /// [nodeSpec] Node Specifications
  /// [resourceGroupName] Resource group name
  /// [specId] Spec Id
  /// [status] Node Status
  const InstanceV2EngineListNodeGroup({
    this.category,
    this.cpuCoreCount,
    this.enableAttachLocalDisk,
    this.memorySizeGiB,
    required this.nodeCount,
    this.nodeDiskSize,
    this.nodeDiskType,
    required this.nodeSpec,
    required this.resourceGroupName,
    this.specId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'cpuCoreCount': ?cpuCoreCount,
      'enableAttachLocalDisk': ?enableAttachLocalDisk,
      'memorySizeGiB': ?memorySizeGiB,
      'nodeCount': nodeCount,
      'nodeDiskSize': ?nodeDiskSize,
      'nodeDiskType': ?nodeDiskType,
      'nodeSpec': nodeSpec,
      'resourceGroupName': resourceGroupName,
      'specId': ?specId,
      'status': ?status,
    };
  }

  factory InstanceV2EngineListNodeGroup.fromMap(Map<String, dynamic> map) {
    return InstanceV2EngineListNodeGroup(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableAttachLocalDisk: (() { final guardedValue = map['enableAttachLocalDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      memorySizeGiB: (() { final guardedValue = map['memorySizeGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeDiskSize: (() { final guardedValue = map['nodeDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeDiskType: (() { final guardedValue = map['nodeDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeSpec: pulumi.Input.fromValue(map['nodeSpec'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      specId: (() { final guardedValue = map['specId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

