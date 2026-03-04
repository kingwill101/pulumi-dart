// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_groups_group_dedicated_host_count_group_by_host_type.dart';
import 'get_dedicated_host_groups_group_zone_id_list.dart';

class GetDedicatedHostGroupsGroup {
  /// The policy that is used to allocate resources in the dedicated cluster. Valid values:`Evenly`,`Intensively`
  final pulumi.Input<String> allocationPolicy;

  /// The Bastion Instance id of the Dedicated Host Group.
  final pulumi.Input<String> bastionInstanceId;

  /// The CPU overcommitment ratio of the dedicated cluster. If you set this parameter to 200, the CPU resources that can be allocated are twice as many as the CPU resources that are provided. This maximizes the CPU utilization. Valid values: 100 to 300. Default value: 200.
  final pulumi.Input<double> cpuAllocateRation;

  /// The CPU Allocated Amount of the Dedicated Host Group.
  final pulumi.Input<double> cpuAllocatedAmount;

  /// The CPU overcommitment ratio of the dedicated cluster.Valid values: 100 to 300. Default value: 200.
  final pulumi.Input<int> cpuAllocationRatio;

  /// The Created Time of the Dedicated Host Group.
  final pulumi.Input<String> createTime;

  /// The Dedicated Host Count Group by Host Type of the Dedicated Host Group.
  final pulumi.Input<
    List<GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType>
  >
  dedicatedHostCountGroupByHostTypes;

  /// The name of the dedicated cluster. The name must be 1 to 64 characters in length and can contain letters, digits, underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String> dedicatedHostGroupDesc;

  /// Dedicated Host Group ID.
  final pulumi.Input<String> dedicatedHostGroupId;

  /// The Deployment Type of the Dedicated Host Group.
  final pulumi.Input<String> deployType;

  /// The storage overcommitment ratio of the dedicated cluster.Valid values: 100 to 300. Default value: 200.
  final pulumi.Input<double> diskAllocateRation;

  /// The Disk Allocated Amount of the Dedicated Host Group.
  final pulumi.Input<double> diskAllocatedAmount;

  /// The Disk Allocation Ratio of the Dedicated Host Group.
  final pulumi.Input<int> diskAllocationRatio;

  /// The DiskUsedAmount of the Dedicated Host Group.
  final pulumi.Input<double> diskUsedAmount;

  /// The DiskUtility of the Dedicated Host Group.
  final pulumi.Input<double> diskUtility;

  /// Database Engine Type.The database engine of the dedicated cluster. Valid values:`Redis`, `SQLServer`, `MySQL`, `PostgreSQL`, `MongoDB`
  final pulumi.Input<String> engine;

  /// The Total Host Number  of the Dedicated Host Group.
  final pulumi.Input<int> hostNumber;

  /// The policy based on which the system handles host failures. Valid values:`Auto`,`Manual`
  final pulumi.Input<String> hostReplacePolicy;

  /// The ID of the Dedicated Host Group.
  final pulumi.Input<String> id;

  /// The Total Instance Number of the Dedicated Host Group.
  final pulumi.Input<int> instanceNumber;

  /// The maximum memory usage of each host in the dedicated cluster.Valid values: 0 to 90. Default value: 90.
  final pulumi.Input<double> memAllocateRation;

  /// The MemAllocatedAmount of the Dedicated Host Group.
  final pulumi.Input<double> memAllocatedAmount;

  /// The Memory Allocation Ratio of the Dedicated Host Group.
  final pulumi.Input<int> memAllocationRatio;

  /// The MemUsedAmount of the Dedicated Host Group.
  final pulumi.Input<double> memUsedAmount;

  /// The Mem Utility of the Dedicated Host Group.
  final pulumi.Input<double> memUtility;

  /// The Text of the Dedicated Host Group.
  final pulumi.Input<String> text;

  /// The virtual private cloud (VPC) ID of the dedicated cluster.
  final pulumi.Input<String> vpcId;

  /// The ZoneIDList of the Dedicated Host Group.
  final pulumi.Input<List<GetDedicatedHostGroupsGroupZoneIdList>> zoneIdLists;

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
      'dedicatedHostCountGroupByHostTypes':
          pulumi.Input.mapInputValue<
            List<GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType>,
            List<Map<String, dynamic>>
          >(
            dedicatedHostCountGroupByHostTypes,
            (value) =>
                pulumi.Input.encodeList<
                  GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'zoneIdLists':
          pulumi.Input.mapInputValue<
            List<GetDedicatedHostGroupsGroupZoneIdList>,
            List<Map<String, dynamic>>
          >(
            zoneIdLists,
            (value) =>
                pulumi.Input.encodeList<
                  GetDedicatedHostGroupsGroupZoneIdList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetDedicatedHostGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupsGroup(
      allocationPolicy: pulumi.Input.fromValue(
        map['allocationPolicy'] as String,
      ),
      bastionInstanceId: pulumi.Input.fromValue(
        map['bastionInstanceId'] as String,
      ),
      cpuAllocateRation: pulumi.Input.fromValue(
        map['cpuAllocateRation'] as double,
      ),
      cpuAllocatedAmount: pulumi.Input.fromValue(
        map['cpuAllocatedAmount'] as double,
      ),
      cpuAllocationRatio: pulumi.Input.fromValue(
        map['cpuAllocationRatio'] as int,
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dedicatedHostCountGroupByHostTypes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType
        >(
          map['dedicatedHostCountGroupByHostTypes']!,
          (value) =>
              GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      dedicatedHostGroupDesc: pulumi.Input.fromValue(
        map['dedicatedHostGroupDesc'] as String,
      ),
      dedicatedHostGroupId: pulumi.Input.fromValue(
        map['dedicatedHostGroupId'] as String,
      ),
      deployType: pulumi.Input.fromValue(map['deployType'] as String),
      diskAllocateRation: pulumi.Input.fromValue(
        map['diskAllocateRation'] as double,
      ),
      diskAllocatedAmount: pulumi.Input.fromValue(
        map['diskAllocatedAmount'] as double,
      ),
      diskAllocationRatio: pulumi.Input.fromValue(
        map['diskAllocationRatio'] as int,
      ),
      diskUsedAmount: pulumi.Input.fromValue(map['diskUsedAmount'] as double),
      diskUtility: pulumi.Input.fromValue(map['diskUtility'] as double),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      hostNumber: pulumi.Input.fromValue(map['hostNumber'] as int),
      hostReplacePolicy: pulumi.Input.fromValue(
        map['hostReplacePolicy'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceNumber: pulumi.Input.fromValue(map['instanceNumber'] as int),
      memAllocateRation: pulumi.Input.fromValue(
        map['memAllocateRation'] as double,
      ),
      memAllocatedAmount: pulumi.Input.fromValue(
        map['memAllocatedAmount'] as double,
      ),
      memAllocationRatio: pulumi.Input.fromValue(
        map['memAllocationRatio'] as int,
      ),
      memUsedAmount: pulumi.Input.fromValue(map['memUsedAmount'] as double),
      memUtility: pulumi.Input.fromValue(map['memUtility'] as double),
      text: pulumi.Input.fromValue(map['text'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      zoneIdLists: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDedicatedHostGroupsGroupZoneIdList>(
          map['zoneIdLists']!,
          (value) => GetDedicatedHostGroupsGroupZoneIdList.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
