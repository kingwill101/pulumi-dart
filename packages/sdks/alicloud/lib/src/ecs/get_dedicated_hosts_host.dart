// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_hosts_host_capacity.dart';
import 'get_dedicated_hosts_host_instance.dart';
import 'get_dedicated_hosts_host_network_attribute.dart';
import 'get_dedicated_hosts_host_operation_lock.dart';

class GetDedicatedHostsHost {
  /// The policy used to migrate the instances from the dedicated host when the dedicated host fails or needs to be repaired online.
  final pulumi.Input<String> actionOnMaintenance;
  /// Specifies whether to add the dedicated host to the resource pool for automatic deployment.
  final pulumi.Input<String> autoPlacement;
  /// The automatic release time of the dedicated host.
  final pulumi.Input<String> autoReleaseTime;
  /// (Available since v1.123.1) A collection of proprietary host performance indicators.
  final pulumi.Input<List<GetDedicatedHostsHostCapacity>> capacities;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<int> cores;
  /// (Available since v1.123.1) CPU oversold ratio.
  final pulumi.Input<double> cpuOverCommitRatio;
  /// The ID of ECS Dedicated Host.
  final pulumi.Input<String> dedicatedHostId;
  /// The name of ECS Dedicated Host.
  final pulumi.Input<String> dedicatedHostName;
  /// The type of the dedicated host.
  final pulumi.Input<String> dedicatedHostType;
  /// The description of the dedicated host.
  final pulumi.Input<String> description;
  /// The expiration time of the subscription dedicated host.
  final pulumi.Input<String> expiredTime;
  /// The GPU model.
  final pulumi.Input<String> gpuSpec;
  /// ID of the ECS Dedicated Host.
  final pulumi.Input<String> id;
  /// (Available since v1.250.0) The ECS instances that were created on the dedicated host.
  final pulumi.Input<List<GetDedicatedHostsHostInstance>> instances;
  /// The machine code of the dedicated host.
  final pulumi.Input<String> machineId;
  /// dedicated host network parameters. contains the following attributes:
  final pulumi.Input<List<GetDedicatedHostsHostNetworkAttribute>> networkAttributes;
  /// The reason why the dedicated host resource is locked. See `operation_locks` below.
  final pulumi.Input<List<GetDedicatedHostsHostOperationLock>> operationLocks;
  /// The billing method of the dedicated host.
  final pulumi.Input<String> paymentType;
  /// The number of physical GPUs.
  final pulumi.Input<int> physicalGpus;
  /// The ID of the resource group to which the ECS Dedicated Host belongs.
  final pulumi.Input<String> resourceGroupId;
  /// The unit of the subscription billing method.
  final pulumi.Input<String> saleCycle;
  /// The number of physical CPUs.
  final pulumi.Input<int> sockets;
  /// The status of the ECS Dedicated Host. Valid Value: `Available`, `Creating`, `PermanentFailure`, `Released`, `UnderAssessment`.
  final pulumi.Input<String> status;
  /// (Available since v1.123.1) A custom instance type family supported by a dedicated host.
  final pulumi.Input<List<String>> supportedCustomInstanceTypeFamilies;
  /// (Available since v1.123.1) ECS instance type family supported by the dedicated host.
  final pulumi.Input<List<String>> supportedInstanceTypeFamilies;
  /// The list of ECS instance.
  final pulumi.Input<List<String>> supportedInstanceTypesLists;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The zone ID of the ECS Dedicated Host.
  final pulumi.Input<String> zoneId;

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
      'capacities': pulumi.Input.mapInputValue<List<GetDedicatedHostsHostCapacity>, List<Map<String, dynamic>>>(capacities, (value) => pulumi.Input.encodeList<GetDedicatedHostsHostCapacity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cores': cores,
      'cpuOverCommitRatio': cpuOverCommitRatio,
      'dedicatedHostId': dedicatedHostId,
      'dedicatedHostName': dedicatedHostName,
      'dedicatedHostType': dedicatedHostType,
      'description': description,
      'expiredTime': expiredTime,
      'gpuSpec': gpuSpec,
      'id': id,
      'instances': pulumi.Input.mapInputValue<List<GetDedicatedHostsHostInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<GetDedicatedHostsHostInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineId': machineId,
      'networkAttributes': pulumi.Input.mapInputValue<List<GetDedicatedHostsHostNetworkAttribute>, List<Map<String, dynamic>>>(networkAttributes, (value) => pulumi.Input.encodeList<GetDedicatedHostsHostNetworkAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operationLocks': pulumi.Input.mapInputValue<List<GetDedicatedHostsHostOperationLock>, List<Map<String, dynamic>>>(operationLocks, (value) => pulumi.Input.encodeList<GetDedicatedHostsHostOperationLock, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      actionOnMaintenance: pulumi.Input.fromValue(map['actionOnMaintenance'] as String),
      autoPlacement: pulumi.Input.fromValue(map['autoPlacement'] as String),
      autoReleaseTime: pulumi.Input.fromValue(map['autoReleaseTime'] as String),
      capacities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedHostsHostCapacity>(map['capacities']!, (value) => GetDedicatedHostsHostCapacity.fromMap((value as Map).cast<String, dynamic>()))),
      cores: pulumi.Input.fromValue(map['cores'] as int),
      cpuOverCommitRatio: pulumi.Input.fromValue(map['cpuOverCommitRatio'] as double),
      dedicatedHostId: pulumi.Input.fromValue(map['dedicatedHostId'] as String),
      dedicatedHostName: pulumi.Input.fromValue(map['dedicatedHostName'] as String),
      dedicatedHostType: pulumi.Input.fromValue(map['dedicatedHostType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      gpuSpec: pulumi.Input.fromValue(map['gpuSpec'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instances: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedHostsHostInstance>(map['instances']!, (value) => GetDedicatedHostsHostInstance.fromMap((value as Map).cast<String, dynamic>()))),
      machineId: pulumi.Input.fromValue(map['machineId'] as String),
      networkAttributes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedHostsHostNetworkAttribute>(map['networkAttributes']!, (value) => GetDedicatedHostsHostNetworkAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      operationLocks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedHostsHostOperationLock>(map['operationLocks']!, (value) => GetDedicatedHostsHostOperationLock.fromMap((value as Map).cast<String, dynamic>()))),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      physicalGpus: pulumi.Input.fromValue(map['physicalGpus'] as int),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      saleCycle: pulumi.Input.fromValue(map['saleCycle'] as String),
      sockets: pulumi.Input.fromValue(map['sockets'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      supportedCustomInstanceTypeFamilies: pulumi.Input.fromValue((map['supportedCustomInstanceTypeFamilies'] as List).cast<String>()),
      supportedInstanceTypeFamilies: pulumi.Input.fromValue((map['supportedInstanceTypeFamilies'] as List).cast<String>()),
      supportedInstanceTypesLists: pulumi.Input.fromValue((map['supportedInstanceTypesLists'] as List).cast<String>()),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

