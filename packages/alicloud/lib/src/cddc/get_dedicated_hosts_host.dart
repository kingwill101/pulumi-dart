// ignore_for_file: unused_element, unnecessary_cast


class GetDedicatedHostsHost {
  /// Specifies whether instances can be created on the host. Valid values: `1` or `0`. `1`: Instances can be created on the host. `0`: Instances cannot be created on the host.
  final String allocationStatus;
  /// The ID of the bastion host with which the host is associated.
  final String bastionInstanceId;
  /// The numeric value of the CPU over commit ratio of the dedicated cluster.
  final String cpuAllocationRatio;
  /// The number of CPU cores used by the host.
  final String cpuUsed;
  /// The time when the host was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final String createTime;
  /// The ID of the dedicated cluster in which the host is created.
  final String dedicatedHostGroupId;
  /// The ID of the host.
  final String dedicatedHostId;
  /// The disk usage in percentage.
  final String diskAllocationRatio;
  /// The Elastic Compute Service (ECS) instance type.
  final String ecsClassCode;
  /// The time when the host expires. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final String endTime;
  /// The type of the database engine that is used by the host.
  final String engine;
  /// The time when the host expires. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final String expiredTime;
  /// The instance type of the host.
  final String hostClass;
  /// The number of CPU cores specified for the host. Unit: `core`.
  final String hostCpu;
  /// The memory of the host. Unit: `GB`.
  final String hostMem;
  /// The name of the host.
  final String hostName;
  /// The total storage capacity of the host. Unit: `GB`.
  final String hostStorage;
  /// The storage type of the host.
  final String hostType;
  /// The ID of the Dedicated Host. The value formats as `<dedicated_host_group_id>:<dedicated_host_id>`.
  final String id;
  /// The image type of the host.
  final String imageCategory;
  /// The IP address of the host.
  final String ipAddress;
  /// The memory usage in percentage.
  final String memAllocationRatio;
  /// The amount of memory used by the host. Unit: `GB`.
  final String memoryUsed;
  /// Indicates whether you have the OS permissions on the host. Valid values: `0`: You do not have the OS permissions on the host. `1`: You have the OS permissions on the host.
  final String openPermission;
  /// The state of the host.
  final String status;
  /// The storage usage of the host. Unit: `GB`.
  final String storageUsed;
  /// The tag of the resource.
  final Map<String, String> tags;
  /// The ID of the virtual private cloud (VPC) to which the host is connected.
  final String vpcId;
  /// The ID of the vSwitch.
  final String vswitchId;
  /// The zone ID of the host.
  final String zoneId;

  /// Creates a new [GetDedicatedHostsHost].
  /// [allocationStatus] Specifies whether instances can be created on the host. Valid values: `1` or `0`. `1`: Instances can be created on the host. `0`: Instances cannot be created on the host.
  /// [bastionInstanceId] The ID of the bastion host with which the host is associated.
  /// [cpuAllocationRatio] The numeric value of the CPU over commit ratio of the dedicated cluster.
  /// [cpuUsed] The number of CPU cores used by the host.
  /// [createTime] The time when the host was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  /// [dedicatedHostGroupId] The ID of the dedicated cluster in which the host is created.
  /// [dedicatedHostId] The ID of the host.
  /// [diskAllocationRatio] The disk usage in percentage.
  /// [ecsClassCode] The Elastic Compute Service (ECS) instance type.
  /// [endTime] The time when the host expires. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  /// [engine] The type of the database engine that is used by the host.
  /// [expiredTime] The time when the host expires. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  /// [hostClass] The instance type of the host.
  /// [hostCpu] The number of CPU cores specified for the host. Unit: `core`.
  /// [hostMem] The memory of the host. Unit: `GB`.
  /// [hostName] The name of the host.
  /// [hostStorage] The total storage capacity of the host. Unit: `GB`.
  /// [hostType] The storage type of the host.
  /// [id] The ID of the Dedicated Host. The value formats as `<dedicated_host_group_id>:<dedicated_host_id>`.
  /// [imageCategory] The image type of the host.
  /// [ipAddress] The IP address of the host.
  /// [memAllocationRatio] The memory usage in percentage.
  /// [memoryUsed] The amount of memory used by the host. Unit: `GB`.
  /// [openPermission] Indicates whether you have the OS permissions on the host. Valid values: `0`: You do not have the OS permissions on the host. `1`: You have the OS permissions on the host.
  /// [status] The state of the host.
  /// [storageUsed] The storage usage of the host. Unit: `GB`.
  /// [tags] The tag of the resource.
  /// [vpcId] The ID of the virtual private cloud (VPC) to which the host is connected.
  /// [vswitchId] The ID of the vSwitch.
  /// [zoneId] The zone ID of the host.
  GetDedicatedHostsHost({
    required this.allocationStatus,
    required this.bastionInstanceId,
    required this.cpuAllocationRatio,
    required this.cpuUsed,
    required this.createTime,
    required this.dedicatedHostGroupId,
    required this.dedicatedHostId,
    required this.diskAllocationRatio,
    required this.ecsClassCode,
    required this.endTime,
    required this.engine,
    required this.expiredTime,
    required this.hostClass,
    required this.hostCpu,
    required this.hostMem,
    required this.hostName,
    required this.hostStorage,
    required this.hostType,
    required this.id,
    required this.imageCategory,
    required this.ipAddress,
    required this.memAllocationRatio,
    required this.memoryUsed,
    required this.openPermission,
    required this.status,
    required this.storageUsed,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStatus': allocationStatus,
      'bastionInstanceId': bastionInstanceId,
      'cpuAllocationRatio': cpuAllocationRatio,
      'cpuUsed': cpuUsed,
      'createTime': createTime,
      'dedicatedHostGroupId': dedicatedHostGroupId,
      'dedicatedHostId': dedicatedHostId,
      'diskAllocationRatio': diskAllocationRatio,
      'ecsClassCode': ecsClassCode,
      'endTime': endTime,
      'engine': engine,
      'expiredTime': expiredTime,
      'hostClass': hostClass,
      'hostCpu': hostCpu,
      'hostMem': hostMem,
      'hostName': hostName,
      'hostStorage': hostStorage,
      'hostType': hostType,
      'id': id,
      'imageCategory': imageCategory,
      'ipAddress': ipAddress,
      'memAllocationRatio': memAllocationRatio,
      'memoryUsed': memoryUsed,
      'openPermission': openPermission,
      'status': status,
      'storageUsed': storageUsed,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetDedicatedHostsHost.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsHost(
      allocationStatus: map['allocationStatus'] as String,
      bastionInstanceId: map['bastionInstanceId'] as String,
      cpuAllocationRatio: map['cpuAllocationRatio'] as String,
      cpuUsed: map['cpuUsed'] as String,
      createTime: map['createTime'] as String,
      dedicatedHostGroupId: map['dedicatedHostGroupId'] as String,
      dedicatedHostId: map['dedicatedHostId'] as String,
      diskAllocationRatio: map['diskAllocationRatio'] as String,
      ecsClassCode: map['ecsClassCode'] as String,
      endTime: map['endTime'] as String,
      engine: map['engine'] as String,
      expiredTime: map['expiredTime'] as String,
      hostClass: map['hostClass'] as String,
      hostCpu: map['hostCpu'] as String,
      hostMem: map['hostMem'] as String,
      hostName: map['hostName'] as String,
      hostStorage: map['hostStorage'] as String,
      hostType: map['hostType'] as String,
      id: map['id'] as String,
      imageCategory: map['imageCategory'] as String,
      ipAddress: map['ipAddress'] as String,
      memAllocationRatio: map['memAllocationRatio'] as String,
      memoryUsed: map['memoryUsed'] as String,
      openPermission: map['openPermission'] as String,
      status: map['status'] as String,
      storageUsed: map['storageUsed'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

