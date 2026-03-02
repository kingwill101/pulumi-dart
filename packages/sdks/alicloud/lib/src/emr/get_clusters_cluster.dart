// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_access_info.dart';
import 'get_clusters_cluster_bootstrap_action_list.dart';
import 'get_clusters_cluster_host_group_list.dart';
import 'get_clusters_cluster_host_pool_info.dart';
import 'get_clusters_cluster_relate_cluster_info.dart';
import 'get_clusters_cluster_software_info.dart';

class GetClustersCluster {
  /// Cluster connection information.
  final pulumi.Input<List<GetClustersClusterAccessInfo>> accessInfos;
  /// Whether flexible expansion is allowed.
  final pulumi.Input<bool> autoScalingAllowed;
  /// Whether to allow expansion by load.
  final pulumi.Input<bool> autoScalingByLoadAllowed;
  /// Whether to enable elastic expansion.
  final pulumi.Input<bool> autoScalingEnable;
  /// Whether to allow the use of elastic scaling bidding instances.
  final pulumi.Input<bool> autoScalingSpotWithLimitAllowed;
  /// List of boot actions.
  final pulumi.Input<List<GetClustersClusterBootstrapActionList>> bootstrapActionLists;
  /// The result of the boot operation.
  final pulumi.Input<bool> bootstrapFailed;
  /// The first ID of the resource.
  final pulumi.Input<String> clusterId;
  /// The ClusterName.
  final pulumi.Input<String> clusterName;
  /// Cluster tag, no need to pay attention.
  final pulumi.Input<String> createResource;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// How to create a cluster.
  final pulumi.Input<String> createType;
  /// The hosting type of the cluster.
  final pulumi.Input<String> depositType;
  /// High security cluster.
  final pulumi.Input<bool> easEnable;
  /// The expiration time of the cluster.
  final pulumi.Input<String> expiredTime;
  /// Additional information for Stack.
  final pulumi.Input<String> extraInfo;
  final pulumi.Input<bool> hasUncompletedOrder;
  /// High availability cluster.
  final pulumi.Input<bool> highAvailabilityEnable;
  /// List of cluster machine groups.
  final pulumi.Input<List<GetClustersClusterHostGroupList>> hostGroupLists;
  /// Machine pool information.
  final pulumi.Input<List<GetClustersClusterHostPoolInfo>> hostPoolInfos;
  final pulumi.Input<String> id;
  /// The ID of the image used to create the cluster.
  final pulumi.Input<String> imageId;
  /// Whether to use Hive local Metabase.
  final pulumi.Input<bool> localMetaDb;
  /// The host type of the cluster. The default is ECS.
  final pulumi.Input<String> machineType;
  /// Metadata type:
  final pulumi.Input<String> metaStoreType;
  /// Cluster network type.
  final pulumi.Input<String> netType;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// The package year and month time of the machine group. The Valid Values : `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `12`, `24`, `36`.
  final pulumi.Input<int> period;
  /// The information of the primary cluster associated with the Gateway.
  final pulumi.Input<List<GetClustersClusterRelateClusterInfo>> relateClusterInfos;
  /// Whether to allow disk expansion:
  final pulumi.Input<bool> resizeDiskEnable;
  /// The time (in seconds) that has been running.
  final pulumi.Input<int> runningTime;
  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;
  /// The name of the security group.
  final pulumi.Input<String> securityGroupName;
  /// Service list.
  final pulumi.Input<List<GetClustersClusterSoftwareInfo>> softwareInfos;
  /// Cluster startup time.
  final pulumi.Input<String> startTime;
  /// The cluster status.
  final pulumi.Input<String> status;
  /// Cluster stop time.
  final pulumi.Input<String> stopTime;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// Disk type.
  final pulumi.Input<String> type;
  /// The EMR permission name used.
  final pulumi.Input<String> userDefinedEmrEcsRole;
  /// The user ID.
  final pulumi.Input<String> userId;
  /// The VPC ID.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetClustersCluster].
  /// [accessInfos] Cluster connection information.
  /// [autoScalingAllowed] Whether flexible expansion is allowed.
  /// [autoScalingByLoadAllowed] Whether to allow expansion by load.
  /// [autoScalingEnable] Whether to enable elastic expansion.
  /// [autoScalingSpotWithLimitAllowed] Whether to allow the use of elastic scaling bidding instances.
  /// [bootstrapActionLists] List of boot actions.
  /// [bootstrapFailed] The result of the boot operation.
  /// [clusterId] The first ID of the resource.
  /// [clusterName] The ClusterName.
  /// [createResource] Cluster tag, no need to pay attention.
  /// [createTime] The creation time of the resource.
  /// [createType] How to create a cluster.
  /// [depositType] The hosting type of the cluster.
  /// [easEnable] High security cluster.
  /// [expiredTime] The expiration time of the cluster.
  /// [extraInfo] Additional information for Stack.
  /// [hasUncompletedOrder] Required.
  /// [highAvailabilityEnable] High availability cluster.
  /// [hostGroupLists] List of cluster machine groups.
  /// [hostPoolInfos] Machine pool information.
  /// [id] Required.
  /// [imageId] The ID of the image used to create the cluster.
  /// [localMetaDb] Whether to use Hive local Metabase.
  /// [machineType] The host type of the cluster. The default is ECS.
  /// [metaStoreType] Metadata type:
  /// [netType] Cluster network type.
  /// [paymentType] The payment type of the resource.
  /// [period] The package year and month time of the machine group. The Valid Values : `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `12`, `24`, `36`.
  /// [relateClusterInfos] The information of the primary cluster associated with the Gateway.
  /// [resizeDiskEnable] Whether to allow disk expansion:
  /// [runningTime] The time (in seconds) that has been running.
  /// [securityGroupId] The ID of the security group.
  /// [securityGroupName] The name of the security group.
  /// [softwareInfos] Service list.
  /// [startTime] Cluster startup time.
  /// [status] The cluster status.
  /// [stopTime] Cluster stop time.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] Disk type.
  /// [userDefinedEmrEcsRole] The EMR permission name used.
  /// [userId] The user ID.
  /// [vpcId] The VPC ID.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID.
  GetClustersCluster({
    required this.accessInfos,
    required this.autoScalingAllowed,
    required this.autoScalingByLoadAllowed,
    required this.autoScalingEnable,
    required this.autoScalingSpotWithLimitAllowed,
    required this.bootstrapActionLists,
    required this.bootstrapFailed,
    required this.clusterId,
    required this.clusterName,
    required this.createResource,
    required this.createTime,
    required this.createType,
    required this.depositType,
    required this.easEnable,
    required this.expiredTime,
    required this.extraInfo,
    required this.hasUncompletedOrder,
    required this.highAvailabilityEnable,
    required this.hostGroupLists,
    required this.hostPoolInfos,
    required this.id,
    required this.imageId,
    required this.localMetaDb,
    required this.machineType,
    required this.metaStoreType,
    required this.netType,
    required this.paymentType,
    required this.period,
    required this.relateClusterInfos,
    required this.resizeDiskEnable,
    required this.runningTime,
    required this.securityGroupId,
    required this.securityGroupName,
    required this.softwareInfos,
    required this.startTime,
    required this.status,
    required this.stopTime,
    required this.tags,
    required this.type,
    required this.userDefinedEmrEcsRole,
    required this.userId,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessInfos': pulumi.Input.mapInputValue<List<GetClustersClusterAccessInfo>, List<Map<String, dynamic>>>(accessInfos, (value) => pulumi.Input.encodeList<GetClustersClusterAccessInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoScalingAllowed': autoScalingAllowed,
      'autoScalingByLoadAllowed': autoScalingByLoadAllowed,
      'autoScalingEnable': autoScalingEnable,
      'autoScalingSpotWithLimitAllowed': autoScalingSpotWithLimitAllowed,
      'bootstrapActionLists': pulumi.Input.mapInputValue<List<GetClustersClusterBootstrapActionList>, List<Map<String, dynamic>>>(bootstrapActionLists, (value) => pulumi.Input.encodeList<GetClustersClusterBootstrapActionList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootstrapFailed': bootstrapFailed,
      'clusterId': clusterId,
      'clusterName': clusterName,
      'createResource': createResource,
      'createTime': createTime,
      'createType': createType,
      'depositType': depositType,
      'easEnable': easEnable,
      'expiredTime': expiredTime,
      'extraInfo': extraInfo,
      'hasUncompletedOrder': hasUncompletedOrder,
      'highAvailabilityEnable': highAvailabilityEnable,
      'hostGroupLists': pulumi.Input.mapInputValue<List<GetClustersClusterHostGroupList>, List<Map<String, dynamic>>>(hostGroupLists, (value) => pulumi.Input.encodeList<GetClustersClusterHostGroupList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostPoolInfos': pulumi.Input.mapInputValue<List<GetClustersClusterHostPoolInfo>, List<Map<String, dynamic>>>(hostPoolInfos, (value) => pulumi.Input.encodeList<GetClustersClusterHostPoolInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'imageId': imageId,
      'localMetaDb': localMetaDb,
      'machineType': machineType,
      'metaStoreType': metaStoreType,
      'netType': netType,
      'paymentType': paymentType,
      'period': period,
      'relateClusterInfos': pulumi.Input.mapInputValue<List<GetClustersClusterRelateClusterInfo>, List<Map<String, dynamic>>>(relateClusterInfos, (value) => pulumi.Input.encodeList<GetClustersClusterRelateClusterInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resizeDiskEnable': resizeDiskEnable,
      'runningTime': runningTime,
      'securityGroupId': securityGroupId,
      'securityGroupName': securityGroupName,
      'softwareInfos': pulumi.Input.mapInputValue<List<GetClustersClusterSoftwareInfo>, List<Map<String, dynamic>>>(softwareInfos, (value) => pulumi.Input.encodeList<GetClustersClusterSoftwareInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': startTime,
      'status': status,
      'stopTime': stopTime,
      'tags': tags,
      'type': type,
      'userDefinedEmrEcsRole': userDefinedEmrEcsRole,
      'userId': userId,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetClustersCluster(
      accessInfos: (pulumi.Input.decodeList<GetClustersClusterAccessInfo>(map['accessInfos'], (value) => GetClustersClusterAccessInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoScalingAllowed: (map['autoScalingAllowed'] as bool).input(),
      autoScalingByLoadAllowed: (map['autoScalingByLoadAllowed'] as bool).input(),
      autoScalingEnable: (map['autoScalingEnable'] as bool).input(),
      autoScalingSpotWithLimitAllowed: (map['autoScalingSpotWithLimitAllowed'] as bool).input(),
      bootstrapActionLists: (pulumi.Input.decodeList<GetClustersClusterBootstrapActionList>(map['bootstrapActionLists'], (value) => GetClustersClusterBootstrapActionList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootstrapFailed: (map['bootstrapFailed'] as bool).input(),
      clusterId: (map['clusterId'] as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      createResource: (map['createResource'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      createType: (map['createType'] as String).input(),
      depositType: (map['depositType'] as String).input(),
      easEnable: (map['easEnable'] as bool).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      extraInfo: (map['extraInfo'] as String).input(),
      hasUncompletedOrder: (map['hasUncompletedOrder'] as bool).input(),
      highAvailabilityEnable: (map['highAvailabilityEnable'] as bool).input(),
      hostGroupLists: (pulumi.Input.decodeList<GetClustersClusterHostGroupList>(map['hostGroupLists'], (value) => GetClustersClusterHostGroupList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostPoolInfos: (pulumi.Input.decodeList<GetClustersClusterHostPoolInfo>(map['hostPoolInfos'], (value) => GetClustersClusterHostPoolInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      imageId: (map['imageId'] as String).input(),
      localMetaDb: (map['localMetaDb'] as bool).input(),
      machineType: (map['machineType'] as String).input(),
      metaStoreType: (map['metaStoreType'] as String).input(),
      netType: (map['netType'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      period: (map['period'] as int).input(),
      relateClusterInfos: (pulumi.Input.decodeList<GetClustersClusterRelateClusterInfo>(map['relateClusterInfos'], (value) => GetClustersClusterRelateClusterInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resizeDiskEnable: (map['resizeDiskEnable'] as bool).input(),
      runningTime: (map['runningTime'] as int).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      securityGroupName: (map['securityGroupName'] as String).input(),
      softwareInfos: (pulumi.Input.decodeList<GetClustersClusterSoftwareInfo>(map['softwareInfos'], (value) => GetClustersClusterSoftwareInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      stopTime: (map['stopTime'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      userDefinedEmrEcsRole: (map['userDefinedEmrEcsRole'] as String).input(),
      userId: (map['userId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

