// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dbclusters_cluster_available_kernel_version.dart';

class GetDBClustersCluster {
  /// Auto-renewal period of an cluster, in the unit of the month.
  final pulumi.Input<int> autoRenewPeriod;

  /// The minor versions to which you can update the current minor version of the cluster.
  final pulumi.Input<List<GetDBClustersClusterAvailableKernelVersion>>
  availableKernelVersions;

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
      'availableKernelVersions':
          pulumi.Input.mapInputValue<
            List<GetDBClustersClusterAvailableKernelVersion>,
            List<Map<String, dynamic>>
          >(
            availableKernelVersions,
            (value) =>
                pulumi.Input.encodeList<
                  GetDBClustersClusterAvailableKernelVersion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      autoRenewPeriod: pulumi.Input.fromValue(map['autoRenewPeriod'] as int),
      availableKernelVersions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDBClustersClusterAvailableKernelVersion>(
          map['availableKernelVersions']!,
          (value) => GetDBClustersClusterAvailableKernelVersion.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      chargeType: pulumi.Input.fromValue(map['chargeType'] as String),
      commodityCode: pulumi.Input.fromValue(map['commodityCode'] as String),
      computeResource: pulumi.Input.fromValue(map['computeResource'] as String),
      connectionString: pulumi.Input.fromValue(
        map['connectionString'] as String,
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dbClusterCategory: pulumi.Input.fromValue(
        map['dbClusterCategory'] as String,
      ),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      dbClusterNetworkType: pulumi.Input.fromValue(
        map['dbClusterNetworkType'] as String,
      ),
      dbClusterType: pulumi.Input.fromValue(map['dbClusterType'] as String),
      dbClusterVersion: pulumi.Input.fromValue(
        map['dbClusterVersion'] as String,
      ),
      dbNodeClass: pulumi.Input.fromValue(map['dbNodeClass'] as String),
      dbNodeCount: pulumi.Input.fromValue(map['dbNodeCount'] as int),
      dbNodeStorage: pulumi.Input.fromValue(map['dbNodeStorage'] as int),
      description: pulumi.Input.fromValue(map['description'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      dtsJobId: pulumi.Input.fromValue(map['dtsJobId'] as String),
      elasticIoResource: pulumi.Input.fromValue(
        map['elasticIoResource'] as int,
      ),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      executorCount: pulumi.Input.fromValue(map['executorCount'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      expired: pulumi.Input.fromValue(map['expired'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kernelVersion: pulumi.Input.fromValue(map['kernelVersion'] as String),
      lockMode: pulumi.Input.fromValue(map['lockMode'] as String),
      lockReason: pulumi.Input.fromValue(map['lockReason'] as String),
      maintainTime: pulumi.Input.fromValue(map['maintainTime'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      rdsInstanceId: pulumi.Input.fromValue(map['rdsInstanceId'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      renewalStatus: pulumi.Input.fromValue(map['renewalStatus'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      securityIps: pulumi.Input.fromValue(
        (map['securityIps'] as List).cast<String>(),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageResource: pulumi.Input.fromValue(map['storageResource'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcCloudInstanceId: pulumi.Input.fromValue(
        map['vpcCloudInstanceId'] as String,
      ),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
