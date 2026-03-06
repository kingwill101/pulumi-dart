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
  const GetClustersCluster({
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
      autoRenewPeriod: pulumi.Input.fromValue(map['autoRenewPeriod'] as int),
      availableKernelVersions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterAvailableKernelVersion>(map['availableKernelVersions']!, (value) => GetClustersClusterAvailableKernelVersion.fromMap((value as Map).cast<String, dynamic>()))),
      chargeType: pulumi.Input.fromValue(map['chargeType'] as String),
      commodityCode: pulumi.Input.fromValue(map['commodityCode'] as String),
      computeResource: pulumi.Input.fromValue(map['computeResource'] as String),
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dbClusterCategory: pulumi.Input.fromValue(map['dbClusterCategory'] as String),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      dbClusterNetworkType: pulumi.Input.fromValue(map['dbClusterNetworkType'] as String),
      dbClusterType: pulumi.Input.fromValue(map['dbClusterType'] as String),
      dbClusterVersion: pulumi.Input.fromValue(map['dbClusterVersion'] as String),
      dbNodeClass: pulumi.Input.fromValue(map['dbNodeClass'] as String),
      dbNodeCount: pulumi.Input.fromValue(map['dbNodeCount'] as int),
      dbNodeStorage: pulumi.Input.fromValue(map['dbNodeStorage'] as int),
      description: pulumi.Input.fromValue(map['description'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      dtsJobId: pulumi.Input.fromValue(map['dtsJobId'] as String),
      elasticIoResource: pulumi.Input.fromValue(map['elasticIoResource'] as int),
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
      securityIps: pulumi.Input.fromValue((map['securityIps'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageResource: pulumi.Input.fromValue(map['storageResource'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcCloudInstanceId: pulumi.Input.fromValue(map['vpcCloudInstanceId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

