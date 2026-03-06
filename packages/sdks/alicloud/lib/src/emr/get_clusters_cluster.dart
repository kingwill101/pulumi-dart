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
  const GetClustersCluster({
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
      accessInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterAccessInfo>(map['accessInfos']!, (value) => GetClustersClusterAccessInfo.fromMap((value as Map).cast<String, dynamic>()))),
      autoScalingAllowed: pulumi.Input.fromValue(map['autoScalingAllowed'] as bool),
      autoScalingByLoadAllowed: pulumi.Input.fromValue(map['autoScalingByLoadAllowed'] as bool),
      autoScalingEnable: pulumi.Input.fromValue(map['autoScalingEnable'] as bool),
      autoScalingSpotWithLimitAllowed: pulumi.Input.fromValue(map['autoScalingSpotWithLimitAllowed'] as bool),
      bootstrapActionLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterBootstrapActionList>(map['bootstrapActionLists']!, (value) => GetClustersClusterBootstrapActionList.fromMap((value as Map).cast<String, dynamic>()))),
      bootstrapFailed: pulumi.Input.fromValue(map['bootstrapFailed'] as bool),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      createResource: pulumi.Input.fromValue(map['createResource'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      createType: pulumi.Input.fromValue(map['createType'] as String),
      depositType: pulumi.Input.fromValue(map['depositType'] as String),
      easEnable: pulumi.Input.fromValue(map['easEnable'] as bool),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      extraInfo: pulumi.Input.fromValue(map['extraInfo'] as String),
      hasUncompletedOrder: pulumi.Input.fromValue(map['hasUncompletedOrder'] as bool),
      highAvailabilityEnable: pulumi.Input.fromValue(map['highAvailabilityEnable'] as bool),
      hostGroupLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterHostGroupList>(map['hostGroupLists']!, (value) => GetClustersClusterHostGroupList.fromMap((value as Map).cast<String, dynamic>()))),
      hostPoolInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterHostPoolInfo>(map['hostPoolInfos']!, (value) => GetClustersClusterHostPoolInfo.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      localMetaDb: pulumi.Input.fromValue(map['localMetaDb'] as bool),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      metaStoreType: pulumi.Input.fromValue(map['metaStoreType'] as String),
      netType: pulumi.Input.fromValue(map['netType'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      period: pulumi.Input.fromValue(map['period'] as int),
      relateClusterInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterRelateClusterInfo>(map['relateClusterInfos']!, (value) => GetClustersClusterRelateClusterInfo.fromMap((value as Map).cast<String, dynamic>()))),
      resizeDiskEnable: pulumi.Input.fromValue(map['resizeDiskEnable'] as bool),
      runningTime: pulumi.Input.fromValue(map['runningTime'] as int),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      securityGroupName: pulumi.Input.fromValue(map['securityGroupName'] as String),
      softwareInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterSoftwareInfo>(map['softwareInfos']!, (value) => GetClustersClusterSoftwareInfo.fromMap((value as Map).cast<String, dynamic>()))),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      stopTime: pulumi.Input.fromValue(map['stopTime'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      userDefinedEmrEcsRole: pulumi.Input.fromValue(map['userDefinedEmrEcsRole'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

