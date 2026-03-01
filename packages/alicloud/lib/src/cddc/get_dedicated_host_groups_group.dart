// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_groups_group_dedicated_host_count_group_by_host_type.dart';
import 'get_dedicated_host_groups_group_zone_id_list.dart';

class GetDedicatedHostGroupsGroup {
  /// The policy that is used to allocate resources in the dedicated cluster. Valid values:`Evenly`,`Intensively`
  final String allocationPolicy;
  /// The Bastion Instance id of the Dedicated Host Group.
  final String bastionInstanceId;
  /// The CPU overcommitment ratio of the dedicated cluster. If you set this parameter to 200, the CPU resources that can be allocated are twice as many as the CPU resources that are provided. This maximizes the CPU utilization. Valid values: 100 to 300. Default value: 200.
  final double cpuAllocateRation;
  /// The CPU Allocated Amount of the Dedicated Host Group.
  final double cpuAllocatedAmount;
  /// The CPU overcommitment ratio of the dedicated cluster.Valid values: 100 to 300. Default value: 200.
  final int cpuAllocationRatio;
  /// The Created Time of the Dedicated Host Group.
  final String createTime;
  /// The Dedicated Host Count Group by Host Type of the Dedicated Host Group.
  final List<GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType> dedicatedHostCountGroupByHostTypes;
  /// The name of the dedicated cluster. The name must be 1 to 64 characters in length and can contain letters, digits, underscores (_), and hyphens (-). It must start with a letter.
  final String dedicatedHostGroupDesc;
  /// Dedicated Host Group ID.
  final String dedicatedHostGroupId;
  /// The Deployment Type of the Dedicated Host Group.
  final String deployType;
  /// The storage overcommitment ratio of the dedicated cluster.Valid values: 100 to 300. Default value: 200.
  final double diskAllocateRation;
  /// The Disk Allocated Amount of the Dedicated Host Group.
  final double diskAllocatedAmount;
  /// The Disk Allocation Ratio of the Dedicated Host Group.
  final int diskAllocationRatio;
  /// The DiskUsedAmount of the Dedicated Host Group.
  final double diskUsedAmount;
  /// The DiskUtility of the Dedicated Host Group.
  final double diskUtility;
  /// Database Engine Type.The database engine of the dedicated cluster. Valid values:`Redis`, `SQLServer`, `MySQL`, `PostgreSQL`, `MongoDB`
  final String engine;
  /// The Total Host Number  of the Dedicated Host Group.
  final int hostNumber;
  /// The policy based on which the system handles host failures. Valid values:`Auto`,`Manual`
  final String hostReplacePolicy;
  /// The ID of the Dedicated Host Group.
  final String id;
  /// The Total Instance Number of the Dedicated Host Group.
  final int instanceNumber;
  /// The maximum memory usage of each host in the dedicated cluster.Valid values: 0 to 90. Default value: 90.
  final double memAllocateRation;
  /// The MemAllocatedAmount of the Dedicated Host Group.
  final double memAllocatedAmount;
  /// The Memory Allocation Ratio of the Dedicated Host Group.
  final int memAllocationRatio;
  /// The MemUsedAmount of the Dedicated Host Group.
  final double memUsedAmount;
  /// The Mem Utility of the Dedicated Host Group.
  final double memUtility;
  /// The Text of the Dedicated Host Group.
  final String text;
  /// The virtual private cloud (VPC) ID of the dedicated cluster.
  final String vpcId;
  /// The ZoneIDList of the Dedicated Host Group.
  final List<GetDedicatedHostGroupsGroupZoneIdList> zoneIdLists;

  /// Creates a new [GetDedicatedHostGroupsGroup].
  /// [allocationPolicy] The policy that is used to allocate resources in the dedicated cluster. Valid values:`Evenly`,`Intensively`
  /// [bastionInstanceId] The Bastion Instance id of the Dedicated Host Group.
  /// [cpuAllocateRation] The CPU overcommitment ratio of the dedicated cluster. If you set this parameter to 200, the CPU resources that can be allocated are twice as many as the CPU resources that are provided. This maximizes the CPU utilization. Valid values: 100 to 300. Default value: 200.
  /// [cpuAllocatedAmount] The CPU Allocated Amount of the Dedicated Host Group.
  /// [cpuAllocationRatio] The CPU overcommitment ratio of the dedicated cluster.Valid values: 100 to 300. Default value: 200.
  /// [createTime] The Created Time of the Dedicated Host Group.
  /// [dedicatedHostCountGroupByHostTypes] The Dedicated Host Count Group by Host Type of the Dedicated Host Group.
  /// [dedicatedHostGroupDesc] The name of the dedicated cluster. The name must be 1 to 64 characters in length and can contain letters, digits, underscores (_), and hyphens (-). It must start with a letter.
  /// [dedicatedHostGroupId] Dedicated Host Group ID.
  /// [deployType] The Deployment Type of the Dedicated Host Group.
  /// [diskAllocateRation] The storage overcommitment ratio of the dedicated cluster.Valid values: 100 to 300. Default value: 200.
  /// [diskAllocatedAmount] The Disk Allocated Amount of the Dedicated Host Group.
  /// [diskAllocationRatio] The Disk Allocation Ratio of the Dedicated Host Group.
  /// [diskUsedAmount] The DiskUsedAmount of the Dedicated Host Group.
  /// [diskUtility] The DiskUtility of the Dedicated Host Group.
  /// [engine] Database Engine Type.The database engine of the dedicated cluster. Valid values:`Redis`, `SQLServer`, `MySQL`, `PostgreSQL`, `MongoDB`
  /// [hostNumber] The Total Host Number  of the Dedicated Host Group.
  /// [hostReplacePolicy] The policy based on which the system handles host failures. Valid values:`Auto`,`Manual`
  /// [id] The ID of the Dedicated Host Group.
  /// [instanceNumber] The Total Instance Number of the Dedicated Host Group.
  /// [memAllocateRation] The maximum memory usage of each host in the dedicated cluster.Valid values: 0 to 90. Default value: 90.
  /// [memAllocatedAmount] The MemAllocatedAmount of the Dedicated Host Group.
  /// [memAllocationRatio] The Memory Allocation Ratio of the Dedicated Host Group.
  /// [memUsedAmount] The MemUsedAmount of the Dedicated Host Group.
  /// [memUtility] The Mem Utility of the Dedicated Host Group.
  /// [text] The Text of the Dedicated Host Group.
  /// [vpcId] The virtual private cloud (VPC) ID of the dedicated cluster.
  /// [zoneIdLists] The ZoneIDList of the Dedicated Host Group.
  GetDedicatedHostGroupsGroup({
    required this.allocationPolicy,
    required this.bastionInstanceId,
    required this.cpuAllocateRation,
    required this.cpuAllocatedAmount,
    required this.cpuAllocationRatio,
    required this.createTime,
    required this.dedicatedHostCountGroupByHostTypes,
    required this.dedicatedHostGroupDesc,
    required this.dedicatedHostGroupId,
    required this.deployType,
    required this.diskAllocateRation,
    required this.diskAllocatedAmount,
    required this.diskAllocationRatio,
    required this.diskUsedAmount,
    required this.diskUtility,
    required this.engine,
    required this.hostNumber,
    required this.hostReplacePolicy,
    required this.id,
    required this.instanceNumber,
    required this.memAllocateRation,
    required this.memAllocatedAmount,
    required this.memAllocationRatio,
    required this.memUsedAmount,
    required this.memUtility,
    required this.text,
    required this.vpcId,
    required this.zoneIdLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': allocationPolicy,
      'bastionInstanceId': bastionInstanceId,
      'cpuAllocateRation': cpuAllocateRation,
      'cpuAllocatedAmount': cpuAllocatedAmount,
      'cpuAllocationRatio': cpuAllocationRatio,
      'createTime': createTime,
      'dedicatedHostCountGroupByHostTypes': pulumi.Input.encodeList<GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType, Map<String, dynamic>>(dedicatedHostCountGroupByHostTypes, (value) => value.toMap()),
      'dedicatedHostGroupDesc': dedicatedHostGroupDesc,
      'dedicatedHostGroupId': dedicatedHostGroupId,
      'deployType': deployType,
      'diskAllocateRation': diskAllocateRation,
      'diskAllocatedAmount': diskAllocatedAmount,
      'diskAllocationRatio': diskAllocationRatio,
      'diskUsedAmount': diskUsedAmount,
      'diskUtility': diskUtility,
      'engine': engine,
      'hostNumber': hostNumber,
      'hostReplacePolicy': hostReplacePolicy,
      'id': id,
      'instanceNumber': instanceNumber,
      'memAllocateRation': memAllocateRation,
      'memAllocatedAmount': memAllocatedAmount,
      'memAllocationRatio': memAllocationRatio,
      'memUsedAmount': memUsedAmount,
      'memUtility': memUtility,
      'text': text,
      'vpcId': vpcId,
      'zoneIdLists': pulumi.Input.encodeList<GetDedicatedHostGroupsGroupZoneIdList, Map<String, dynamic>>(zoneIdLists, (value) => value.toMap()),
    };
  }

  factory GetDedicatedHostGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupsGroup(
      allocationPolicy: map['allocationPolicy'] as String,
      bastionInstanceId: map['bastionInstanceId'] as String,
      cpuAllocateRation: map['cpuAllocateRation'] as double,
      cpuAllocatedAmount: map['cpuAllocatedAmount'] as double,
      cpuAllocationRatio: map['cpuAllocationRatio'] as int,
      createTime: map['createTime'] as String,
      dedicatedHostCountGroupByHostTypes: pulumi.Input.decodeList<GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType>(map['dedicatedHostCountGroupByHostTypes'], (value) => GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType.fromMap((value as Map).cast<String, dynamic>())),
      dedicatedHostGroupDesc: map['dedicatedHostGroupDesc'] as String,
      dedicatedHostGroupId: map['dedicatedHostGroupId'] as String,
      deployType: map['deployType'] as String,
      diskAllocateRation: map['diskAllocateRation'] as double,
      diskAllocatedAmount: map['diskAllocatedAmount'] as double,
      diskAllocationRatio: map['diskAllocationRatio'] as int,
      diskUsedAmount: map['diskUsedAmount'] as double,
      diskUtility: map['diskUtility'] as double,
      engine: map['engine'] as String,
      hostNumber: map['hostNumber'] as int,
      hostReplacePolicy: map['hostReplacePolicy'] as String,
      id: map['id'] as String,
      instanceNumber: map['instanceNumber'] as int,
      memAllocateRation: map['memAllocateRation'] as double,
      memAllocatedAmount: map['memAllocatedAmount'] as double,
      memAllocationRatio: map['memAllocationRatio'] as int,
      memUsedAmount: map['memUsedAmount'] as double,
      memUtility: map['memUtility'] as double,
      text: map['text'] as String,
      vpcId: map['vpcId'] as String,
      zoneIdLists: pulumi.Input.decodeList<GetDedicatedHostGroupsGroupZoneIdList>(map['zoneIdLists'], (value) => GetDedicatedHostGroupsGroupZoneIdList.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

