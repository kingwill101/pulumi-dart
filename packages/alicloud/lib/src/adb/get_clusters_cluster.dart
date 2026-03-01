// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_available_kernel_version.dart';

class GetClustersCluster {
  final int autoRenewPeriod;
  final List<GetClustersClusterAvailableKernelVersion> availableKernelVersions;
  /// Billing method. Value options: `PostPaid` for Pay-As-You-Go and `PrePaid` for subscription.
  final String chargeType;
  final String commodityCode;
  final String computeResource;
  final String connectionString;
  /// The CreateTime of the ADB cluster.
  final String createTime;
  final String dbClusterCategory;
  final String dbClusterId;
  final String dbClusterNetworkType;
  final String dbClusterType;
  final String dbClusterVersion;
  /// The DBNodeClass of the ADB cluster.
  final String dbNodeClass;
  /// The DBNodeCount of the ADB cluster.
  final int dbNodeCount;
  /// The DBNodeStorage of the ADB cluster.
  final int dbNodeStorage;
  /// The description of the ADB cluster.
  final String description;
  final String diskType;
  final String dtsJobId;
  final int elasticIoResource;
  final String engine;
  final String engineVersion;
  final String executorCount;
  /// Expiration time. Pay-As-You-Go clusters never expire.
  final String expireTime;
  /// The expired of the ADB cluster.
  final String expired;
  /// The ID of the ADB cluster.
  final String id;
  final String kernelVersion;
  /// The LockMode of the ADB cluster.
  final String lockMode;
  final String lockReason;
  final String maintainTime;
  final String mode;
  /// The DBClusterNetworkType of the ADB cluster.
  final String networkType;
  final String paymentType;
  final int port;
  final String rdsInstanceId;
  /// Region ID the cluster belongs to.
  final String regionId;
  final String renewalStatus;
  final String resourceGroupId;
  final List<String> securityIps;
  /// The status of the cluster. Valid values: `Preparing`, `Creating`, `Restoring`, `Running`, `Deleting`, `ClassChanging`, `NetAddressCreating`, `NetAddressDeleting`. For more information, see [Cluster status](https://www.alibabacloud.com/help/doc-detail/143075.htm).
  final String status;
  final String storageResource;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final Map<String, String> tags;
  final String vpcCloudInstanceId;
  /// ID of the VPC the cluster belongs to.
  final String vpcId;
  final String vswitchId;
  /// The ZoneId of the ADB cluster.
  final String zoneId;

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
      'availableKernelVersions': pulumi.Input.encodeList<GetClustersClusterAvailableKernelVersion, Map<String, dynamic>>(availableKernelVersions, (value) => value.toMap()),
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
      autoRenewPeriod: map['autoRenewPeriod'] as int,
      availableKernelVersions: pulumi.Input.decodeList<GetClustersClusterAvailableKernelVersion>(map['availableKernelVersions'], (value) => GetClustersClusterAvailableKernelVersion.fromMap((value as Map).cast<String, dynamic>())),
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

