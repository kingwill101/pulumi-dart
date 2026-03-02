// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_available_kernel_version.dart';

class GetClustersCluster {
  final pulumi.Input<int> autoRenewPeriod;
  final pulumi.Input<List<GetClustersClusterAvailableKernelVersion>> availableKernelVersions;
  /// Billing method. Value options: `PostPaid` for Pay-As-You-Go and `PrePaid` for subscription.
  final pulumi.Input<String> chargeType;
  final pulumi.Input<String> commodityCode;
  final pulumi.Input<String> computeResource;
  final pulumi.Input<String> connectionString;
  /// The CreateTime of the ADB cluster.
  final pulumi.Input<String> createTime;
  final pulumi.Input<String> dbClusterCategory;
  final pulumi.Input<String> dbClusterId;
  final pulumi.Input<String> dbClusterNetworkType;
  final pulumi.Input<String> dbClusterType;
  final pulumi.Input<String> dbClusterVersion;
  /// The DBNodeClass of the ADB cluster.
  final pulumi.Input<String> dbNodeClass;
  /// The DBNodeCount of the ADB cluster.
  final pulumi.Input<int> dbNodeCount;
  /// The DBNodeStorage of the ADB cluster.
  final pulumi.Input<int> dbNodeStorage;
  /// The description of the ADB cluster.
  final pulumi.Input<String> description;
  final pulumi.Input<String> diskType;
  final pulumi.Input<String> dtsJobId;
  final pulumi.Input<int> elasticIoResource;
  final pulumi.Input<String> engine;
  final pulumi.Input<String> engineVersion;
  final pulumi.Input<String> executorCount;
  /// Expiration time. Pay-As-You-Go clusters never expire.
  final pulumi.Input<String> expireTime;
  /// The expired of the ADB cluster.
  final pulumi.Input<String> expired;
  /// The ID of the ADB cluster.
  final pulumi.Input<String> id;
  final pulumi.Input<String> kernelVersion;
  /// The LockMode of the ADB cluster.
  final pulumi.Input<String> lockMode;
  final pulumi.Input<String> lockReason;
  final pulumi.Input<String> maintainTime;
  final pulumi.Input<String> mode;
  /// The DBClusterNetworkType of the ADB cluster.
  final pulumi.Input<String> networkType;
  final pulumi.Input<String> paymentType;
  final pulumi.Input<int> port;
  final pulumi.Input<String> rdsInstanceId;
  /// Region ID the cluster belongs to.
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> renewalStatus;
  final pulumi.Input<String> resourceGroupId;
  final pulumi.Input<List<String>> securityIps;
  /// The status of the cluster. Valid values: `Preparing`, `Creating`, `Restoring`, `Running`, `Deleting`, `ClassChanging`, `NetAddressCreating`, `NetAddressDeleting`. For more information, see [Cluster status](https://www.alibabacloud.com/help/doc-detail/143075.htm).
  final pulumi.Input<String> status;
  final pulumi.Input<String> storageResource;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>> tags;
  final pulumi.Input<String> vpcCloudInstanceId;
  /// ID of the VPC the cluster belongs to.
  final pulumi.Input<String> vpcId;
  final pulumi.Input<String> vswitchId;
  /// The ZoneId of the ADB cluster.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetClustersCluster].
  /// [autoRenewPeriod] Required.
  /// [availableKernelVersions] Required.
  /// [chargeType] Billing method. Value options: `PostPaid` for Pay-As-You-Go and `PrePaid` for subscription.
  /// [commodityCode] Required.
  /// [computeResource] Required.
  /// [connectionString] Required.
  /// [createTime] The CreateTime of the ADB cluster.
  /// [dbClusterCategory] Required.
  /// [dbClusterId] Required.
  /// [dbClusterNetworkType] Required.
  /// [dbClusterType] Required.
  /// [dbClusterVersion] Required.
  /// [dbNodeClass] The DBNodeClass of the ADB cluster.
  /// [dbNodeCount] The DBNodeCount of the ADB cluster.
  /// [dbNodeStorage] The DBNodeStorage of the ADB cluster.
  /// [description] The description of the ADB cluster.
  /// [diskType] Required.
  /// [dtsJobId] Required.
  /// [elasticIoResource] Required.
  /// [engine] Required.
  /// [engineVersion] Required.
  /// [executorCount] Required.
  /// [expireTime] Expiration time. Pay-As-You-Go clusters never expire.
  /// [expired] The expired of the ADB cluster.
  /// [id] The ID of the ADB cluster.
  /// [kernelVersion] Required.
  /// [lockMode] The LockMode of the ADB cluster.
  /// [lockReason] Required.
  /// [maintainTime] Required.
  /// [mode] Required.
  /// [networkType] The DBClusterNetworkType of the ADB cluster.
  /// [paymentType] Required.
  /// [port] Required.
  /// [rdsInstanceId] Required.
  /// [regionId] Region ID the cluster belongs to.
  /// [renewalStatus] Required.
  /// [resourceGroupId] Required.
  /// [securityIps] Required.
  /// [status] The status of the cluster. Valid values: `Preparing`, `Creating`, `Restoring`, `Running`, `Deleting`, `ClassChanging`, `NetAddressCreating`, `NetAddressDeleting`. For more information, see [Cluster status](https://www.alibabacloud.com/help/doc-detail/143075.htm).
  /// [storageResource] Required.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcCloudInstanceId] Required.
  /// [vpcId] ID of the VPC the cluster belongs to.
  /// [vswitchId] Required.
  /// [zoneId] The ZoneId of the ADB cluster.
  GetClustersCluster({
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
      'availableKernelVersions': pulumi.Input.mapInputValue<List<GetClustersClusterAvailableKernelVersion>, List<Map<String, dynamic>>>(availableKernelVersions, (value) => pulumi.Input.encodeList<GetClustersClusterAvailableKernelVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory GetClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetClustersCluster(
      autoRenewPeriod: (map['autoRenewPeriod'] as int).input(),
      availableKernelVersions: (pulumi.Input.decodeList<GetClustersClusterAvailableKernelVersion>(map['availableKernelVersions'], (value) => GetClustersClusterAvailableKernelVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
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

