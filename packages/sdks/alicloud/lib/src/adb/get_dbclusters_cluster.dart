// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dbclusters_cluster_available_kernel_version.dart';

class GetDBClustersCluster {
  /// Auto-renewal period of an cluster, in the unit of the month.
  final pulumi.Input<int> autoRenewPeriod;
  /// The minor versions to which you can update the current minor version of the cluster.
  final pulumi.Input<List<GetDBClustersClusterAvailableKernelVersion>> availableKernelVersions;
  /// The payment type of the resource.
  final pulumi.Input<String> chargeType;
  /// The name of the service.
  final pulumi.Input<String> commodityCode;
  /// The specifications of computing resources in elastic mode. The increase of resources can speed up queries. AnalyticDB for MySQL automatically scales computing resources.
  final pulumi.Input<String> computeResource;
  /// The endpoint of the cluster.
  final pulumi.Input<String> connectionString;
  /// The CreateTime of the ADB cluster.
  final pulumi.Input<String> createTime;
  /// The db cluster category.
  final pulumi.Input<String> dbClusterCategory;
  /// The db cluster id.
  final pulumi.Input<String> dbClusterId;
  /// The db cluster network type.
  final pulumi.Input<String> dbClusterNetworkType;
  /// The db cluster type.
  final pulumi.Input<String> dbClusterType;
  /// The db cluster version.
  final pulumi.Input<String> dbClusterVersion;
  /// The db node class.
  final pulumi.Input<String> dbNodeClass;
  /// The db node count.
  final pulumi.Input<int> dbNodeCount;
  /// The db node storage.
  final pulumi.Input<int> dbNodeStorage;
  /// The description of DBCluster.
  final pulumi.Input<String> description;
  /// The type of the disk.
  final pulumi.Input<String> diskType;
  /// The ID of the data synchronization task in Data Transmission Service (DTS). This parameter is valid only for analytic instances.
  final pulumi.Input<String> dtsJobId;
  /// The elastic io resource.
  final pulumi.Input<int> elasticIoResource;
  /// The engine of the database.
  final pulumi.Input<String> engine;
  /// The engine version of the database.
  final pulumi.Input<String> engineVersion;
  /// The number of nodes. The node resources are used for data computing in elastic mode.
  final pulumi.Input<String> executorCount;
  /// The time when the cluster expires.
  final pulumi.Input<String> expireTime;
  /// Indicates whether the cluster has expired.
  final pulumi.Input<String> expired;
  /// The ID of the DBCluster.
  final pulumi.Input<String> id;
  /// The minor version. Example: 3.1.9.
  final pulumi.Input<String> kernelVersion;
  /// The lock mode of the cluster.
  final pulumi.Input<String> lockMode;
  /// The reason why the cluster is locked.
  final pulumi.Input<String> lockReason;
  /// The maintenance window of the cluster.
  final pulumi.Input<String> maintainTime;
  /// The lock mode of the cluster.
  final pulumi.Input<String> mode;
  /// The db cluster network type.
  final pulumi.Input<String> networkType;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// The port that is used to access the cluster.
  final pulumi.Input<int> port;
  /// The ID of the ApsaraDB RDS instance from which data is synchronized to the cluster. This parameter is valid only for analytic instances.
  final pulumi.Input<String> rdsInstanceId;
  /// The region ID  of the resource.
  final pulumi.Input<String> regionId;
  /// The status of renewal.
  final pulumi.Input<String> renewalStatus;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// List of IP addresses allowed to access all databases of an cluster.
  final pulumi.Input<List<String>> securityIps;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// The specifications of storage resources in elastic mode. The resources are used for data read and write operations. The increase of resources can improve the read and write performance of your cluster.
  final pulumi.Input<String> storageResource;
  /// A map of tags assigned to the cluster.
  final pulumi.Input<Map<String, String>> tags;
  /// The vpc cloud instance id.
  final pulumi.Input<String> vpcCloudInstanceId;
  /// The vpc id.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone ID  of the resource.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetDBClustersCluster].
  /// [autoRenewPeriod] Auto-renewal period of an cluster, in the unit of the month.
  /// [availableKernelVersions] The minor versions to which you can update the current minor version of the cluster.
  /// [chargeType] The payment type of the resource.
  /// [commodityCode] The name of the service.
  /// [computeResource] The specifications of computing resources in elastic mode. The increase of resources can speed up queries. AnalyticDB for MySQL automatically scales computing resources.
  /// [connectionString] The endpoint of the cluster.
  /// [createTime] The CreateTime of the ADB cluster.
  /// [dbClusterCategory] The db cluster category.
  /// [dbClusterId] The db cluster id.
  /// [dbClusterNetworkType] The db cluster network type.
  /// [dbClusterType] The db cluster type.
  /// [dbClusterVersion] The db cluster version.
  /// [dbNodeClass] The db node class.
  /// [dbNodeCount] The db node count.
  /// [dbNodeStorage] The db node storage.
  /// [description] The description of DBCluster.
  /// [diskType] The type of the disk.
  /// [dtsJobId] The ID of the data synchronization task in Data Transmission Service (DTS). This parameter is valid only for analytic instances.
  /// [elasticIoResource] The elastic io resource.
  /// [engine] The engine of the database.
  /// [engineVersion] The engine version of the database.
  /// [executorCount] The number of nodes. The node resources are used for data computing in elastic mode.
  /// [expireTime] The time when the cluster expires.
  /// [expired] Indicates whether the cluster has expired.
  /// [id] The ID of the DBCluster.
  /// [kernelVersion] The minor version. Example: 3.1.9.
  /// [lockMode] The lock mode of the cluster.
  /// [lockReason] The reason why the cluster is locked.
  /// [maintainTime] The maintenance window of the cluster.
  /// [mode] The lock mode of the cluster.
  /// [networkType] The db cluster network type.
  /// [paymentType] The payment type of the resource.
  /// [port] The port that is used to access the cluster.
  /// [rdsInstanceId] The ID of the ApsaraDB RDS instance from which data is synchronized to the cluster. This parameter is valid only for analytic instances.
  /// [regionId] The region ID  of the resource.
  /// [renewalStatus] The status of renewal.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityIps] List of IP addresses allowed to access all databases of an cluster.
  /// [status] The status of the resource.
  /// [storageResource] The specifications of storage resources in elastic mode. The resources are used for data read and write operations. The increase of resources can improve the read and write performance of your cluster.
  /// [tags] A map of tags assigned to the cluster.
  /// [vpcCloudInstanceId] The vpc cloud instance id.
  /// [vpcId] The vpc id.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID  of the resource.
  GetDBClustersCluster({
    required this.autoRenewPeriod,
    required this.availableKernelVersions,
    required this.chargeType,
    required this.commodityCode,
    required this.computeResource,
    required this.connectionString,
    required this.createTime,
    required this.dbClusterCategory,
    required this.dbClusterId,
    required this.dbClusterNetworkType,
    required this.dbClusterType,
    required this.dbClusterVersion,
    required this.dbNodeClass,
    required this.dbNodeCount,
    required this.dbNodeStorage,
    required this.description,
    required this.diskType,
    required this.dtsJobId,
    required this.elasticIoResource,
    required this.engine,
    required this.engineVersion,
    required this.executorCount,
    required this.expireTime,
    required this.expired,
    required this.id,
    required this.kernelVersion,
    required this.lockMode,
    required this.lockReason,
    required this.maintainTime,
    required this.mode,
    required this.networkType,
    required this.paymentType,
    required this.port,
    required this.rdsInstanceId,
    required this.regionId,
    required this.renewalStatus,
    required this.resourceGroupId,
    required this.securityIps,
    required this.status,
    required this.storageResource,
    required this.tags,
    required this.vpcCloudInstanceId,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewPeriod': autoRenewPeriod,
      'availableKernelVersions': pulumi.Input.mapInputValue<List<GetDBClustersClusterAvailableKernelVersion>, List<Map<String, dynamic>>>(availableKernelVersions, (value) => pulumi.Input.encodeList<GetDBClustersClusterAvailableKernelVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chargeType': chargeType,
      'commodityCode': commodityCode,
      'computeResource': computeResource,
      'connectionString': connectionString,
      'createTime': createTime,
      'dbClusterCategory': dbClusterCategory,
      'dbClusterId': dbClusterId,
      'dbClusterNetworkType': dbClusterNetworkType,
      'dbClusterType': dbClusterType,
      'dbClusterVersion': dbClusterVersion,
      'dbNodeClass': dbNodeClass,
      'dbNodeCount': dbNodeCount,
      'dbNodeStorage': dbNodeStorage,
      'description': description,
      'diskType': diskType,
      'dtsJobId': dtsJobId,
      'elasticIoResource': elasticIoResource,
      'engine': engine,
      'engineVersion': engineVersion,
      'executorCount': executorCount,
      'expireTime': expireTime,
      'expired': expired,
      'id': id,
      'kernelVersion': kernelVersion,
      'lockMode': lockMode,
      'lockReason': lockReason,
      'maintainTime': maintainTime,
      'mode': mode,
      'networkType': networkType,
      'paymentType': paymentType,
      'port': port,
      'rdsInstanceId': rdsInstanceId,
      'regionId': regionId,
      'renewalStatus': renewalStatus,
      'resourceGroupId': resourceGroupId,
      'securityIps': securityIps,
      'status': status,
      'storageResource': storageResource,
      'tags': tags,
      'vpcCloudInstanceId': vpcCloudInstanceId,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetDBClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetDBClustersCluster(
      autoRenewPeriod: (map['autoRenewPeriod'] as int).input(),
      availableKernelVersions: (pulumi.Input.decodeList<GetDBClustersClusterAvailableKernelVersion>(map['availableKernelVersions'], (value) => GetDBClustersClusterAvailableKernelVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chargeType: (map['chargeType'] as String).input(),
      commodityCode: (map['commodityCode'] as String).input(),
      computeResource: (map['computeResource'] as String).input(),
      connectionString: (map['connectionString'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      dbClusterCategory: (map['dbClusterCategory'] as String).input(),
      dbClusterId: (map['dbClusterId'] as String).input(),
      dbClusterNetworkType: (map['dbClusterNetworkType'] as String).input(),
      dbClusterType: (map['dbClusterType'] as String).input(),
      dbClusterVersion: (map['dbClusterVersion'] as String).input(),
      dbNodeClass: (map['dbNodeClass'] as String).input(),
      dbNodeCount: (map['dbNodeCount'] as int).input(),
      dbNodeStorage: (map['dbNodeStorage'] as int).input(),
      description: (map['description'] as String).input(),
      diskType: (map['diskType'] as String).input(),
      dtsJobId: (map['dtsJobId'] as String).input(),
      elasticIoResource: (map['elasticIoResource'] as int).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      executorCount: (map['executorCount'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      expired: (map['expired'] as String).input(),
      id: (map['id'] as String).input(),
      kernelVersion: (map['kernelVersion'] as String).input(),
      lockMode: (map['lockMode'] as String).input(),
      lockReason: (map['lockReason'] as String).input(),
      maintainTime: (map['maintainTime'] as String).input(),
      mode: (map['mode'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      port: (map['port'] as int).input(),
      rdsInstanceId: (map['rdsInstanceId'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      renewalStatus: (map['renewalStatus'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      securityIps: ((map['securityIps'] as List).cast<String>()).input(),
      status: (map['status'] as String).input(),
      storageResource: (map['storageResource'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcCloudInstanceId: (map['vpcCloudInstanceId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

