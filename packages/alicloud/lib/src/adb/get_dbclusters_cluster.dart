// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dbclusters_cluster_available_kernel_version.dart';

class GetDBClustersCluster {
  /// Auto-renewal period of an cluster, in the unit of the month.
  final int autoRenewPeriod;
  /// The minor versions to which you can update the current minor version of the cluster.
  final List<GetDBClustersClusterAvailableKernelVersion> availableKernelVersions;
  /// The payment type of the resource.
  final String chargeType;
  /// The name of the service.
  final String commodityCode;
  /// The specifications of computing resources in elastic mode. The increase of resources can speed up queries. AnalyticDB for MySQL automatically scales computing resources.
  final String computeResource;
  /// The endpoint of the cluster.
  final String connectionString;
  /// The CreateTime of the ADB cluster.
  final String createTime;
  /// The db cluster category.
  final String dbClusterCategory;
  /// The db cluster id.
  final String dbClusterId;
  /// The db cluster network type.
  final String dbClusterNetworkType;
  /// The db cluster type.
  final String dbClusterType;
  /// The db cluster version.
  final String dbClusterVersion;
  /// The db node class.
  final String dbNodeClass;
  /// The db node count.
  final int dbNodeCount;
  /// The db node storage.
  final int dbNodeStorage;
  /// The description of DBCluster.
  final String description;
  /// The type of the disk.
  final String diskType;
  /// The ID of the data synchronization task in Data Transmission Service (DTS). This parameter is valid only for analytic instances.
  final String dtsJobId;
  /// The elastic io resource.
  final int elasticIoResource;
  /// The engine of the database.
  final String engine;
  /// The engine version of the database.
  final String engineVersion;
  /// The number of nodes. The node resources are used for data computing in elastic mode.
  final String executorCount;
  /// The time when the cluster expires.
  final String expireTime;
  /// Indicates whether the cluster has expired.
  final String expired;
  /// The ID of the DBCluster.
  final String id;
  /// The minor version. Example: 3.1.9.
  final String kernelVersion;
  /// The lock mode of the cluster.
  final String lockMode;
  /// The reason why the cluster is locked.
  final String lockReason;
  /// The maintenance window of the cluster.
  final String maintainTime;
  /// The lock mode of the cluster.
  final String mode;
  /// The db cluster network type.
  final String networkType;
  /// The payment type of the resource.
  final String paymentType;
  /// The port that is used to access the cluster.
  final int port;
  /// The ID of the ApsaraDB RDS instance from which data is synchronized to the cluster. This parameter is valid only for analytic instances.
  final String rdsInstanceId;
  /// The region ID  of the resource.
  final String regionId;
  /// The status of renewal.
  final String renewalStatus;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// List of IP addresses allowed to access all databases of an cluster.
  final List<String> securityIps;
  /// The status of the resource.
  final String status;
  /// The specifications of storage resources in elastic mode. The resources are used for data read and write operations. The increase of resources can improve the read and write performance of your cluster.
  final String storageResource;
  /// A map of tags assigned to the cluster.
  final Map<String, String> tags;
  /// The vpc cloud instance id.
  final String vpcCloudInstanceId;
  /// The vpc id.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;
  /// The zone ID  of the resource.
  final String zoneId;

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
      'availableKernelVersions': pulumi.Input.encodeList<GetDBClustersClusterAvailableKernelVersion, Map<String, dynamic>>(availableKernelVersions, (value) => value.toMap()),
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
      autoRenewPeriod: map['autoRenewPeriod'] as int,
      availableKernelVersions: pulumi.Input.decodeList<GetDBClustersClusterAvailableKernelVersion>(map['availableKernelVersions'], (value) => GetDBClustersClusterAvailableKernelVersion.fromMap((value as Map).cast<String, dynamic>())),
      chargeType: map['chargeType'] as String,
      commodityCode: map['commodityCode'] as String,
      computeResource: map['computeResource'] as String,
      connectionString: map['connectionString'] as String,
      createTime: map['createTime'] as String,
      dbClusterCategory: map['dbClusterCategory'] as String,
      dbClusterId: map['dbClusterId'] as String,
      dbClusterNetworkType: map['dbClusterNetworkType'] as String,
      dbClusterType: map['dbClusterType'] as String,
      dbClusterVersion: map['dbClusterVersion'] as String,
      dbNodeClass: map['dbNodeClass'] as String,
      dbNodeCount: map['dbNodeCount'] as int,
      dbNodeStorage: map['dbNodeStorage'] as int,
      description: map['description'] as String,
      diskType: map['diskType'] as String,
      dtsJobId: map['dtsJobId'] as String,
      elasticIoResource: map['elasticIoResource'] as int,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      executorCount: map['executorCount'] as String,
      expireTime: map['expireTime'] as String,
      expired: map['expired'] as String,
      id: map['id'] as String,
      kernelVersion: map['kernelVersion'] as String,
      lockMode: map['lockMode'] as String,
      lockReason: map['lockReason'] as String,
      maintainTime: map['maintainTime'] as String,
      mode: map['mode'] as String,
      networkType: map['networkType'] as String,
      paymentType: map['paymentType'] as String,
      port: map['port'] as int,
      rdsInstanceId: map['rdsInstanceId'] as String,
      regionId: map['regionId'] as String,
      renewalStatus: map['renewalStatus'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      securityIps: (map['securityIps'] as List).cast<String>(),
      status: map['status'] as String,
      storageResource: map['storageResource'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcCloudInstanceId: map['vpcCloudInstanceId'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

