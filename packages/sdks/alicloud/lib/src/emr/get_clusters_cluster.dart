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
  final List<GetClustersClusterAccessInfo> accessInfos;
  /// Whether flexible expansion is allowed.
  final bool autoScalingAllowed;
  /// Whether to allow expansion by load.
  final bool autoScalingByLoadAllowed;
  /// Whether to enable elastic expansion.
  final bool autoScalingEnable;
  /// Whether to allow the use of elastic scaling bidding instances.
  final bool autoScalingSpotWithLimitAllowed;
  /// List of boot actions.
  final List<GetClustersClusterBootstrapActionList> bootstrapActionLists;
  /// The result of the boot operation.
  final bool bootstrapFailed;
  /// The first ID of the resource.
  final String clusterId;
  /// The ClusterName.
  final String clusterName;
  /// Cluster tag, no need to pay attention.
  final String createResource;
  /// The creation time of the resource.
  final String createTime;
  /// How to create a cluster.
  final String createType;
  /// The hosting type of the cluster.
  final String depositType;
  /// High security cluster.
  final bool easEnable;
  /// The expiration time of the cluster.
  final String expiredTime;
  /// Additional information for Stack.
  final String extraInfo;
  final bool hasUncompletedOrder;
  /// High availability cluster.
  final bool highAvailabilityEnable;
  /// List of cluster machine groups.
  final List<GetClustersClusterHostGroupList> hostGroupLists;
  /// Machine pool information.
  final List<GetClustersClusterHostPoolInfo> hostPoolInfos;
  final String id;
  /// The ID of the image used to create the cluster.
  final String imageId;
  /// Whether to use Hive local Metabase.
  final bool localMetaDb;
  /// The host type of the cluster. The default is ECS.
  final String machineType;
  /// Metadata type:
  final String metaStoreType;
  /// Cluster network type.
  final String netType;
  /// The payment type of the resource.
  final String paymentType;
  /// The package year and month time of the machine group. The Valid Values : `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `12`, `24`, `36`.
  final int period;
  /// The information of the primary cluster associated with the Gateway.
  final List<GetClustersClusterRelateClusterInfo> relateClusterInfos;
  /// Whether to allow disk expansion:
  final bool resizeDiskEnable;
  /// The time (in seconds) that has been running.
  final int runningTime;
  /// The ID of the security group.
  final String securityGroupId;
  /// The name of the security group.
  final String securityGroupName;
  /// Service list.
  final List<GetClustersClusterSoftwareInfo> softwareInfos;
  /// Cluster startup time.
  final String startTime;
  /// The cluster status.
  final String status;
  /// Cluster stop time.
  final String stopTime;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// Disk type.
  final String type;
  /// The EMR permission name used.
  final String userDefinedEmrEcsRole;
  /// The user ID.
  final String userId;
  /// The VPC ID.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;
  /// The zone ID.
  final String zoneId;

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
      'accessInfos': pulumi.Input.encodeList<GetClustersClusterAccessInfo, Map<String, dynamic>>(accessInfos, (value) => value.toMap()),
      'autoScalingAllowed': autoScalingAllowed,
      'autoScalingByLoadAllowed': autoScalingByLoadAllowed,
      'autoScalingEnable': autoScalingEnable,
      'autoScalingSpotWithLimitAllowed': autoScalingSpotWithLimitAllowed,
      'bootstrapActionLists': pulumi.Input.encodeList<GetClustersClusterBootstrapActionList, Map<String, dynamic>>(bootstrapActionLists, (value) => value.toMap()),
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
      'hostGroupLists': pulumi.Input.encodeList<GetClustersClusterHostGroupList, Map<String, dynamic>>(hostGroupLists, (value) => value.toMap()),
      'hostPoolInfos': pulumi.Input.encodeList<GetClustersClusterHostPoolInfo, Map<String, dynamic>>(hostPoolInfos, (value) => value.toMap()),
      'id': id,
      'imageId': imageId,
      'localMetaDb': localMetaDb,
      'machineType': machineType,
      'metaStoreType': metaStoreType,
      'netType': netType,
      'paymentType': paymentType,
      'period': period,
      'relateClusterInfos': pulumi.Input.encodeList<GetClustersClusterRelateClusterInfo, Map<String, dynamic>>(relateClusterInfos, (value) => value.toMap()),
      'resizeDiskEnable': resizeDiskEnable,
      'runningTime': runningTime,
      'securityGroupId': securityGroupId,
      'securityGroupName': securityGroupName,
      'softwareInfos': pulumi.Input.encodeList<GetClustersClusterSoftwareInfo, Map<String, dynamic>>(softwareInfos, (value) => value.toMap()),
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
      accessInfos: pulumi.Input.decodeList<GetClustersClusterAccessInfo>(map['accessInfos'], (value) => GetClustersClusterAccessInfo.fromMap((value as Map).cast<String, dynamic>())),
      autoScalingAllowed: map['autoScalingAllowed'] as bool,
      autoScalingByLoadAllowed: map['autoScalingByLoadAllowed'] as bool,
      autoScalingEnable: map['autoScalingEnable'] as bool,
      autoScalingSpotWithLimitAllowed: map['autoScalingSpotWithLimitAllowed'] as bool,
      bootstrapActionLists: pulumi.Input.decodeList<GetClustersClusterBootstrapActionList>(map['bootstrapActionLists'], (value) => GetClustersClusterBootstrapActionList.fromMap((value as Map).cast<String, dynamic>())),
      bootstrapFailed: map['bootstrapFailed'] as bool,
      clusterId: map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      createResource: map['createResource'] as String,
      createTime: map['createTime'] as String,
      createType: map['createType'] as String,
      depositType: map['depositType'] as String,
      easEnable: map['easEnable'] as bool,
      expiredTime: map['expiredTime'] as String,
      extraInfo: map['extraInfo'] as String,
      hasUncompletedOrder: map['hasUncompletedOrder'] as bool,
      highAvailabilityEnable: map['highAvailabilityEnable'] as bool,
      hostGroupLists: pulumi.Input.decodeList<GetClustersClusterHostGroupList>(map['hostGroupLists'], (value) => GetClustersClusterHostGroupList.fromMap((value as Map).cast<String, dynamic>())),
      hostPoolInfos: pulumi.Input.decodeList<GetClustersClusterHostPoolInfo>(map['hostPoolInfos'], (value) => GetClustersClusterHostPoolInfo.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      localMetaDb: map['localMetaDb'] as bool,
      machineType: map['machineType'] as String,
      metaStoreType: map['metaStoreType'] as String,
      netType: map['netType'] as String,
      paymentType: map['paymentType'] as String,
      period: map['period'] as int,
      relateClusterInfos: pulumi.Input.decodeList<GetClustersClusterRelateClusterInfo>(map['relateClusterInfos'], (value) => GetClustersClusterRelateClusterInfo.fromMap((value as Map).cast<String, dynamic>())),
      resizeDiskEnable: map['resizeDiskEnable'] as bool,
      runningTime: map['runningTime'] as int,
      securityGroupId: map['securityGroupId'] as String,
      securityGroupName: map['securityGroupName'] as String,
      softwareInfos: pulumi.Input.decodeList<GetClustersClusterSoftwareInfo>(map['softwareInfos'], (value) => GetClustersClusterSoftwareInfo.fromMap((value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      stopTime: map['stopTime'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      userDefinedEmrEcsRole: map['userDefinedEmrEcsRole'] as String,
      userId: map['userId'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

