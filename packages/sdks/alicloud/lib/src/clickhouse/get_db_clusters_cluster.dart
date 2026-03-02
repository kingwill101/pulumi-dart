// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_clusters_cluster_db_cluster_access_white_list.dart';
import 'get_db_clusters_cluster_scale_out_status.dart';

class GetDbClustersCluster {
  /// Alibaba Cloud account Id.
  final pulumi.Input<String> aliUid;
  /// The ID of the business process flow.
  final pulumi.Input<String> bid;
  /// Instance family values include: Basic: Basic edition; HighAvailability: high availability edition.
  final pulumi.Input<String> category;
  /// The Commodity Code of the DBCluster.
  final pulumi.Input<String> commodityCode;
  /// Connection string.
  final pulumi.Input<String> connectionString;
  /// The control version of the DBCluster.
  final pulumi.Input<String> controlVersion;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The db cluster access white list.
  final pulumi.Input<List<GetDbClustersClusterDbClusterAccessWhiteList>> dbClusterAccessWhiteLists;
  /// The DBCluster description.
  final pulumi.Input<String> dbClusterDescription;
  final pulumi.Input<String> dbClusterId;
  /// The DBCluster network type.
  final pulumi.Input<String> dbClusterNetworkType;
  /// The DBCluster type.
  final pulumi.Input<String> dbClusterType;
  /// The node class of the DBCluster.
  final pulumi.Input<String> dbNodeClass;
  /// The node count of the DBCluster.
  final pulumi.Input<String> dbNodeCount;
  /// The node storage of the DBCluster.
  final pulumi.Input<String> dbNodeStorage;
  /// Key management service KMS key ID.
  final pulumi.Input<String> encryptionKey;
  /// Currently only supports ECS disk encryption, with a value of CloudDisk, not encrypted when empty.
  final pulumi.Input<String> encryptionType;
  /// The Engine of the DBCluster.
  final pulumi.Input<String> engine;
  /// The engine version of the DBCluster.
  final pulumi.Input<String> engineVersion;
  /// The expiration time of the DBCluster.
  final pulumi.Input<String> expireTime;
  /// The ID of the DBCluster.
  final pulumi.Input<String> id;
  /// If the instance has expired.
  final pulumi.Input<String> isExpired;
  /// The lock mode of the DBCluster.
  final pulumi.Input<String> lockMode;
  /// Lock reason of the DBCluster.
  final pulumi.Input<String> lockReason;
  /// Examples of the maintenance window, in the format of hh:mmZ-hh:mm Z.
  final pulumi.Input<String> maintainTime;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final pulumi.Input<String> paymentType;
  /// Connection port.
  final pulumi.Input<int> port;
  /// A public IP address for the connection.
  final pulumi.Input<String> publicConnectionString;
  /// Public network port.
  final pulumi.Input<String> publicPort;
  /// Scale state.
  final pulumi.Input<List<GetDbClustersClusterScaleOutStatus>> scaleOutStatuses;
  /// The status of the DBCluster. Valid values: `Running`,`Creating`,`Deleting`,`Restarting`,`Preparing`.
  final pulumi.Input<String> status;
  /// Storage type of DBCluster. Valid values: `cloud_essd`, `cloud_efficiency`, `cloud_essd_pl2`, `cloud_essd_pl3`.
  final pulumi.Input<String> storageType;
  /// Support fallback scheme.
  final pulumi.Input<int> supportBackup;
  /// The system supports http port number.
  final pulumi.Input<bool> supportHttpsPort;
  /// Supports Mysql, and those of the ports.
  final pulumi.Input<bool> supportMysqlPort;
  /// Virtual Private Cloud (VPC cloud instance ID.
  final pulumi.Input<String> vpcCloudInstanceId;
  /// The VPC ID of the DBCluster.
  final pulumi.Input<String> vpcId;
  /// The vswitch id of the DBCluster.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the DBCluster.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetDbClustersCluster].
  /// [aliUid] Alibaba Cloud account Id.
  /// [bid] The ID of the business process flow.
  /// [category] Instance family values include: Basic: Basic edition; HighAvailability: high availability edition.
  /// [commodityCode] The Commodity Code of the DBCluster.
  /// [connectionString] Connection string.
  /// [controlVersion] The control version of the DBCluster.
  /// [createTime] The creation time of the resource.
  /// [dbClusterAccessWhiteLists] The db cluster access white list.
  /// [dbClusterDescription] The DBCluster description.
  /// [dbClusterId] Required.
  /// [dbClusterNetworkType] The DBCluster network type.
  /// [dbClusterType] The DBCluster type.
  /// [dbNodeClass] The node class of the DBCluster.
  /// [dbNodeCount] The node count of the DBCluster.
  /// [dbNodeStorage] The node storage of the DBCluster.
  /// [encryptionKey] Key management service KMS key ID.
  /// [encryptionType] Currently only supports ECS disk encryption, with a value of CloudDisk, not encrypted when empty.
  /// [engine] The Engine of the DBCluster.
  /// [engineVersion] The engine version of the DBCluster.
  /// [expireTime] The expiration time of the DBCluster.
  /// [id] The ID of the DBCluster.
  /// [isExpired] If the instance has expired.
  /// [lockMode] The lock mode of the DBCluster.
  /// [lockReason] Lock reason of the DBCluster.
  /// [maintainTime] Examples of the maintenance window, in the format of hh:mmZ-hh:mm Z.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  /// [port] Connection port.
  /// [publicConnectionString] A public IP address for the connection.
  /// [publicPort] Public network port.
  /// [scaleOutStatuses] Scale state.
  /// [status] The status of the DBCluster. Valid values: `Running`,`Creating`,`Deleting`,`Restarting`,`Preparing`.
  /// [storageType] Storage type of DBCluster. Valid values: `cloud_essd`, `cloud_efficiency`, `cloud_essd_pl2`, `cloud_essd_pl3`.
  /// [supportBackup] Support fallback scheme.
  /// [supportHttpsPort] The system supports http port number.
  /// [supportMysqlPort] Supports Mysql, and those of the ports.
  /// [vpcCloudInstanceId] Virtual Private Cloud (VPC cloud instance ID.
  /// [vpcId] The VPC ID of the DBCluster.
  /// [vswitchId] The vswitch id of the DBCluster.
  /// [zoneId] The zone ID of the DBCluster.
  GetDbClustersCluster({
    required this.aliUid,
    required this.bid,
    required this.category,
    required this.commodityCode,
    required this.connectionString,
    required this.controlVersion,
    required this.createTime,
    required this.dbClusterAccessWhiteLists,
    required this.dbClusterDescription,
    required this.dbClusterId,
    required this.dbClusterNetworkType,
    required this.dbClusterType,
    required this.dbNodeClass,
    required this.dbNodeCount,
    required this.dbNodeStorage,
    required this.encryptionKey,
    required this.encryptionType,
    required this.engine,
    required this.engineVersion,
    required this.expireTime,
    required this.id,
    required this.isExpired,
    required this.lockMode,
    required this.lockReason,
    required this.maintainTime,
    required this.paymentType,
    required this.port,
    required this.publicConnectionString,
    required this.publicPort,
    required this.scaleOutStatuses,
    required this.status,
    required this.storageType,
    required this.supportBackup,
    required this.supportHttpsPort,
    required this.supportMysqlPort,
    required this.vpcCloudInstanceId,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliUid': aliUid,
      'bid': bid,
      'category': category,
      'commodityCode': commodityCode,
      'connectionString': connectionString,
      'controlVersion': controlVersion,
      'createTime': createTime,
      'dbClusterAccessWhiteLists': pulumi.Input.mapInputValue<List<GetDbClustersClusterDbClusterAccessWhiteList>, List<Map<String, dynamic>>>(dbClusterAccessWhiteLists, (value) => pulumi.Input.encodeList<GetDbClustersClusterDbClusterAccessWhiteList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbClusterDescription': dbClusterDescription,
      'dbClusterId': dbClusterId,
      'dbClusterNetworkType': dbClusterNetworkType,
      'dbClusterType': dbClusterType,
      'dbNodeClass': dbNodeClass,
      'dbNodeCount': dbNodeCount,
      'dbNodeStorage': dbNodeStorage,
      'encryptionKey': encryptionKey,
      'encryptionType': encryptionType,
      'engine': engine,
      'engineVersion': engineVersion,
      'expireTime': expireTime,
      'id': id,
      'isExpired': isExpired,
      'lockMode': lockMode,
      'lockReason': lockReason,
      'maintainTime': maintainTime,
      'paymentType': paymentType,
      'port': port,
      'publicConnectionString': publicConnectionString,
      'publicPort': publicPort,
      'scaleOutStatuses': pulumi.Input.mapInputValue<List<GetDbClustersClusterScaleOutStatus>, List<Map<String, dynamic>>>(scaleOutStatuses, (value) => pulumi.Input.encodeList<GetDbClustersClusterScaleOutStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'storageType': storageType,
      'supportBackup': supportBackup,
      'supportHttpsPort': supportHttpsPort,
      'supportMysqlPort': supportMysqlPort,
      'vpcCloudInstanceId': vpcCloudInstanceId,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetDbClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetDbClustersCluster(
      aliUid: (map['aliUid'] as String).input(),
      bid: (map['bid'] as String).input(),
      category: (map['category'] as String).input(),
      commodityCode: (map['commodityCode'] as String).input(),
      connectionString: (map['connectionString'] as String).input(),
      controlVersion: (map['controlVersion'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      dbClusterAccessWhiteLists: (pulumi.Input.decodeList<GetDbClustersClusterDbClusterAccessWhiteList>(map['dbClusterAccessWhiteLists'], (value) => GetDbClustersClusterDbClusterAccessWhiteList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbClusterDescription: (map['dbClusterDescription'] as String).input(),
      dbClusterId: (map['dbClusterId'] as String).input(),
      dbClusterNetworkType: (map['dbClusterNetworkType'] as String).input(),
      dbClusterType: (map['dbClusterType'] as String).input(),
      dbNodeClass: (map['dbNodeClass'] as String).input(),
      dbNodeCount: (map['dbNodeCount'] as String).input(),
      dbNodeStorage: (map['dbNodeStorage'] as String).input(),
      encryptionKey: (map['encryptionKey'] as String).input(),
      encryptionType: (map['encryptionType'] as String).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      id: (map['id'] as String).input(),
      isExpired: (map['isExpired'] as String).input(),
      lockMode: (map['lockMode'] as String).input(),
      lockReason: (map['lockReason'] as String).input(),
      maintainTime: (map['maintainTime'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      port: (map['port'] as int).input(),
      publicConnectionString: (map['publicConnectionString'] as String).input(),
      publicPort: (map['publicPort'] as String).input(),
      scaleOutStatuses: (pulumi.Input.decodeList<GetDbClustersClusterScaleOutStatus>(map['scaleOutStatuses'], (value) => GetDbClustersClusterScaleOutStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      storageType: (map['storageType'] as String).input(),
      supportBackup: (map['supportBackup'] as int).input(),
      supportHttpsPort: (map['supportHttpsPort'] as bool).input(),
      supportMysqlPort: (map['supportMysqlPort'] as bool).input(),
      vpcCloudInstanceId: (map['vpcCloudInstanceId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

