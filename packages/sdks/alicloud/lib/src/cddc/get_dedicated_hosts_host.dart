// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostsHost {
  /// Specifies whether instances can be created on the host. Valid values: `1` or `0`. `1`: Instances can be created on the host. `0`: Instances cannot be created on the host.
  final pulumi.Input<String> allocationStatus;
  /// The ID of the bastion host with which the host is associated.
  final pulumi.Input<String> bastionInstanceId;
  /// The numeric value of the CPU over commit ratio of the dedicated cluster.
  final pulumi.Input<String> cpuAllocationRatio;
  /// The number of CPU cores used by the host.
  final pulumi.Input<String> cpuUsed;
  /// The time when the host was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final pulumi.Input<String> createTime;
  /// The ID of the dedicated cluster in which the host is created.
  final pulumi.Input<String> dedicatedHostGroupId;
  /// The ID of the host.
  final pulumi.Input<String> dedicatedHostId;
  /// The disk usage in percentage.
  final pulumi.Input<String> diskAllocationRatio;
  /// The Elastic Compute Service (ECS) instance type.
  final pulumi.Input<String> ecsClassCode;
  /// The time when the host expires. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final pulumi.Input<String> endTime;
  /// The type of the database engine that is used by the host.
  final pulumi.Input<String> engine;
  /// The time when the host expires. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final pulumi.Input<String> expiredTime;
  /// The instance type of the host.
  final pulumi.Input<String> hostClass;
  /// The number of CPU cores specified for the host. Unit: `core`.
  final pulumi.Input<String> hostCpu;
  /// The memory of the host. Unit: `GB`.
  final pulumi.Input<String> hostMem;
  /// The name of the host.
  final pulumi.Input<String> hostName;
  /// The total storage capacity of the host. Unit: `GB`.
  final pulumi.Input<String> hostStorage;
  /// The storage type of the host.
  final pulumi.Input<String> hostType;
  /// The ID of the Dedicated Host. The value formats as `<dedicated_host_group_id>:<dedicated_host_id>`.
  final pulumi.Input<String> id;
  /// The image type of the host.
  final pulumi.Input<String> imageCategory;
  /// The IP address of the host.
  final pulumi.Input<String> ipAddress;
  /// The memory usage in percentage.
  final pulumi.Input<String> memAllocationRatio;
  /// The amount of memory used by the host. Unit: `GB`.
  final pulumi.Input<String> memoryUsed;
  /// Indicates whether you have the OS permissions on the host. Valid values: `0`: You do not have the OS permissions on the host. `1`: You have the OS permissions on the host.
  final pulumi.Input<String> openPermission;
  /// The state of the host.
  final pulumi.Input<String> status;
  /// The storage usage of the host. Unit: `GB`.
  final pulumi.Input<String> storageUsed;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The ID of the virtual private cloud (VPC) to which the host is connected.
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the host.
  final pulumi.Input<String> zoneId;

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
      allocationStatus: (map['allocationStatus'] as String).input(),
      bastionInstanceId: (map['bastionInstanceId'] as String).input(),
      cpuAllocationRatio: (map['cpuAllocationRatio'] as String).input(),
      cpuUsed: (map['cpuUsed'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      dedicatedHostGroupId: (map['dedicatedHostGroupId'] as String).input(),
      dedicatedHostId: (map['dedicatedHostId'] as String).input(),
      diskAllocationRatio: (map['diskAllocationRatio'] as String).input(),
      ecsClassCode: (map['ecsClassCode'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      engine: (map['engine'] as String).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      hostClass: (map['hostClass'] as String).input(),
      hostCpu: (map['hostCpu'] as String).input(),
      hostMem: (map['hostMem'] as String).input(),
      hostName: (map['hostName'] as String).input(),
      hostStorage: (map['hostStorage'] as String).input(),
      hostType: (map['hostType'] as String).input(),
      id: (map['id'] as String).input(),
      imageCategory: (map['imageCategory'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      memAllocationRatio: (map['memAllocationRatio'] as String).input(),
      memoryUsed: (map['memoryUsed'] as String).input(),
      openPermission: (map['openPermission'] as String).input(),
      status: (map['status'] as String).input(),
      storageUsed: (map['storageUsed'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

