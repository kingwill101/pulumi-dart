// ignore_for_file: unused_element, unnecessary_cast


class InstanceV2EngineListNodeGroup {
  /// Node Type
  final String? category;
  /// Number of CPU cores
  final int? cpuCoreCount;
  /// Whether to mount  local cloud disks
  final bool? enableAttachLocalDisk;
  /// Node memory size
  final int? memorySizeGiB;
  /// Number of nodes
  final int nodeCount;
  /// Local cloud disk storage capacity
  final int? nodeDiskSize;
  /// Node Disk Type
  final String? nodeDiskType;
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
  final String nodeSpec;
  /// Resource group name
  final String resourceGroupName;
  /// Spec Id
  final String? specId;
  /// Node Status
  final String? status;

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
  InstanceV2EngineListNodeGroup({
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
      category: map['category'] == null ? null : map['category'] as String,
      cpuCoreCount: map['cpuCoreCount'] == null ? null : map['cpuCoreCount'] as int,
      enableAttachLocalDisk: map['enableAttachLocalDisk'] == null ? null : map['enableAttachLocalDisk'] as bool,
      memorySizeGiB: map['memorySizeGiB'] == null ? null : map['memorySizeGiB'] as int,
      nodeCount: map['nodeCount'] as int,
      nodeDiskSize: map['nodeDiskSize'] == null ? null : map['nodeDiskSize'] as int,
      nodeDiskType: map['nodeDiskType'] == null ? null : map['nodeDiskType'] as String,
      nodeSpec: map['nodeSpec'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      specId: map['specId'] == null ? null : map['specId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

