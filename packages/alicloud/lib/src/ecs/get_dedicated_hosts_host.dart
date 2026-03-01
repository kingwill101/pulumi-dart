// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_hosts_host_capacity.dart';
import 'get_dedicated_hosts_host_instance.dart';
import 'get_dedicated_hosts_host_network_attribute.dart';
import 'get_dedicated_hosts_host_operation_lock.dart';

class GetDedicatedHostsHost {
  /// The policy used to migrate the instances from the dedicated host when the dedicated host fails or needs to be repaired online.
  final String actionOnMaintenance;
  /// Specifies whether to add the dedicated host to the resource pool for automatic deployment.
  final String autoPlacement;
  /// The automatic release time of the dedicated host.
  final String autoReleaseTime;
  /// (Available since v1.123.1) A collection of proprietary host performance indicators.
  final List<GetDedicatedHostsHostCapacity> capacities;
  /// A mapping of tags to assign to the resource.
  final int cores;
  /// (Available since v1.123.1) CPU oversold ratio.
  final double cpuOverCommitRatio;
  /// The ID of ECS Dedicated Host.
  final String dedicatedHostId;
  /// The name of ECS Dedicated Host.
  final String dedicatedHostName;
  /// The type of the dedicated host.
  final String dedicatedHostType;
  /// The description of the dedicated host.
  final String description;
  /// The expiration time of the subscription dedicated host.
  final String expiredTime;
  /// The GPU model.
  final String gpuSpec;
  /// ID of the ECS Dedicated Host.
  final String id;
  /// (Available since v1.250.0) The ECS instances that were created on the dedicated host.
  final List<GetDedicatedHostsHostInstance> instances;
  /// The machine code of the dedicated host.
  final String machineId;
  /// dedicated host network parameters. contains the following attributes:
  final List<GetDedicatedHostsHostNetworkAttribute> networkAttributes;
  /// The reason why the dedicated host resource is locked. See `operation_locks` below.
  final List<GetDedicatedHostsHostOperationLock> operationLocks;
  /// The billing method of the dedicated host.
  final String paymentType;
  /// The number of physical GPUs.
  final int physicalGpus;
  /// The ID of the resource group to which the ECS Dedicated Host belongs.
  final String resourceGroupId;
  /// The unit of the subscription billing method.
  final String saleCycle;
  /// The number of physical CPUs.
  final int sockets;
  /// The status of the ECS Dedicated Host. Valid Value: `Available`, `Creating`, `PermanentFailure`, `Released`, `UnderAssessment`.
  final String status;
  /// (Available since v1.123.1) A custom instance type family supported by a dedicated host.
  final List<String> supportedCustomInstanceTypeFamilies;
  /// (Available since v1.123.1) ECS instance type family supported by the dedicated host.
  final List<String> supportedInstanceTypeFamilies;
  /// The list of ECS instance.
  final List<String> supportedInstanceTypesLists;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The zone ID of the ECS Dedicated Host.
  final String zoneId;

  /// Creates a new [GetDedicatedHostsHost].
  /// [actionOnMaintenance] The policy used to migrate the instances from the dedicated host when the dedicated host fails or needs to be repaired online.
  /// [autoPlacement] Specifies whether to add the dedicated host to the resource pool for automatic deployment.
  /// [autoReleaseTime] The automatic release time of the dedicated host.
  /// [capacities] (Available since v1.123.1) A collection of proprietary host performance indicators.
  /// [cores] A mapping of tags to assign to the resource.
  /// [cpuOverCommitRatio] (Available since v1.123.1) CPU oversold ratio.
  /// [dedicatedHostId] The ID of ECS Dedicated Host.
  /// [dedicatedHostName] The name of ECS Dedicated Host.
  /// [dedicatedHostType] The type of the dedicated host.
  /// [description] The description of the dedicated host.
  /// [expiredTime] The expiration time of the subscription dedicated host.
  /// [gpuSpec] The GPU model.
  /// [id] ID of the ECS Dedicated Host.
  /// [instances] (Available since v1.250.0) The ECS instances that were created on the dedicated host.
  /// [machineId] The machine code of the dedicated host.
  /// [networkAttributes] dedicated host network parameters. contains the following attributes:
  /// [operationLocks] The reason why the dedicated host resource is locked. See `operation_locks` below.
  /// [paymentType] The billing method of the dedicated host.
  /// [physicalGpus] The number of physical GPUs.
  /// [resourceGroupId] The ID of the resource group to which the ECS Dedicated Host belongs.
  /// [saleCycle] The unit of the subscription billing method.
  /// [sockets] The number of physical CPUs.
  /// [status] The status of the ECS Dedicated Host. Valid Value: `Available`, `Creating`, `PermanentFailure`, `Released`, `UnderAssessment`.
  /// [supportedCustomInstanceTypeFamilies] (Available since v1.123.1) A custom instance type family supported by a dedicated host.
  /// [supportedInstanceTypeFamilies] (Available since v1.123.1) ECS instance type family supported by the dedicated host.
  /// [supportedInstanceTypesLists] The list of ECS instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] The zone ID of the ECS Dedicated Host.
  GetDedicatedHostsHost({
    required this.actionOnMaintenance,
    required this.autoPlacement,
    required this.autoReleaseTime,
    required this.capacities,
    required this.cores,
    required this.cpuOverCommitRatio,
    required this.dedicatedHostId,
    required this.dedicatedHostName,
    required this.dedicatedHostType,
    required this.description,
    required this.expiredTime,
    required this.gpuSpec,
    required this.id,
    required this.instances,
    required this.machineId,
    required this.networkAttributes,
    required this.operationLocks,
    required this.paymentType,
    required this.physicalGpus,
    required this.resourceGroupId,
    required this.saleCycle,
    required this.sockets,
    required this.status,
    required this.supportedCustomInstanceTypeFamilies,
    required this.supportedInstanceTypeFamilies,
    required this.supportedInstanceTypesLists,
    required this.tags,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnMaintenance': actionOnMaintenance,
      'autoPlacement': autoPlacement,
      'autoReleaseTime': autoReleaseTime,
      'capacities': pulumi.Input.encodeList<GetDedicatedHostsHostCapacity, Map<String, dynamic>>(capacities, (value) => value.toMap()),
      'cores': cores,
      'cpuOverCommitRatio': cpuOverCommitRatio,
      'dedicatedHostId': dedicatedHostId,
      'dedicatedHostName': dedicatedHostName,
      'dedicatedHostType': dedicatedHostType,
      'description': description,
      'expiredTime': expiredTime,
      'gpuSpec': gpuSpec,
      'id': id,
      'instances': pulumi.Input.encodeList<GetDedicatedHostsHostInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'machineId': machineId,
      'networkAttributes': pulumi.Input.encodeList<GetDedicatedHostsHostNetworkAttribute, Map<String, dynamic>>(networkAttributes, (value) => value.toMap()),
      'operationLocks': pulumi.Input.encodeList<GetDedicatedHostsHostOperationLock, Map<String, dynamic>>(operationLocks, (value) => value.toMap()),
      'paymentType': paymentType,
      'physicalGpus': physicalGpus,
      'resourceGroupId': resourceGroupId,
      'saleCycle': saleCycle,
      'sockets': sockets,
      'status': status,
      'supportedCustomInstanceTypeFamilies': supportedCustomInstanceTypeFamilies,
      'supportedInstanceTypeFamilies': supportedInstanceTypeFamilies,
      'supportedInstanceTypesLists': supportedInstanceTypesLists,
      'tags': tags,
      'zoneId': zoneId,
    };
  }

  factory GetDedicatedHostsHost.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsHost(
      actionOnMaintenance: map['actionOnMaintenance'] as String,
      autoPlacement: map['autoPlacement'] as String,
      autoReleaseTime: map['autoReleaseTime'] as String,
      capacities: pulumi.Input.decodeList<GetDedicatedHostsHostCapacity>(map['capacities'], (value) => GetDedicatedHostsHostCapacity.fromMap((value as Map).cast<String, dynamic>())),
      cores: map['cores'] as int,
      cpuOverCommitRatio: map['cpuOverCommitRatio'] as double,
      dedicatedHostId: map['dedicatedHostId'] as String,
      dedicatedHostName: map['dedicatedHostName'] as String,
      dedicatedHostType: map['dedicatedHostType'] as String,
      description: map['description'] as String,
      expiredTime: map['expiredTime'] as String,
      gpuSpec: map['gpuSpec'] as String,
      id: map['id'] as String,
      instances: pulumi.Input.decodeList<GetDedicatedHostsHostInstance>(map['instances'], (value) => GetDedicatedHostsHostInstance.fromMap((value as Map).cast<String, dynamic>())),
      machineId: map['machineId'] as String,
      networkAttributes: pulumi.Input.decodeList<GetDedicatedHostsHostNetworkAttribute>(map['networkAttributes'], (value) => GetDedicatedHostsHostNetworkAttribute.fromMap((value as Map).cast<String, dynamic>())),
      operationLocks: pulumi.Input.decodeList<GetDedicatedHostsHostOperationLock>(map['operationLocks'], (value) => GetDedicatedHostsHostOperationLock.fromMap((value as Map).cast<String, dynamic>())),
      paymentType: map['paymentType'] as String,
      physicalGpus: map['physicalGpus'] as int,
      resourceGroupId: map['resourceGroupId'] as String,
      saleCycle: map['saleCycle'] as String,
      sockets: map['sockets'] as int,
      status: map['status'] as String,
      supportedCustomInstanceTypeFamilies: (map['supportedCustomInstanceTypeFamilies'] as List).cast<String>(),
      supportedInstanceTypeFamilies: (map['supportedInstanceTypeFamilies'] as List).cast<String>(),
      supportedInstanceTypesLists: (map['supportedInstanceTypesLists'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      zoneId: map['zoneId'] as String,
    );
  }
}

