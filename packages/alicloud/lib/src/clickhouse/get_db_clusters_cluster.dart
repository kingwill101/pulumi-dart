// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_clusters_cluster_db_cluster_access_white_list.dart';
import 'get_db_clusters_cluster_scale_out_status.dart';

class GetDbClustersCluster {
  /// Alibaba Cloud account Id.
  final String aliUid;
  /// The ID of the business process flow.
  final String bid;
  /// Instance family values include: Basic: Basic edition; HighAvailability: high availability edition.
  final String category;
  /// The Commodity Code of the DBCluster.
  final String commodityCode;
  /// Connection string.
  final String connectionString;
  /// The control version of the DBCluster.
  final String controlVersion;
  /// The creation time of the resource.
  final String createTime;
  /// The db cluster access white list.
  final List<GetDbClustersClusterDbClusterAccessWhiteList> dbClusterAccessWhiteLists;
  /// The DBCluster description.
  final String dbClusterDescription;
  final String dbClusterId;
  /// The DBCluster network type.
  final String dbClusterNetworkType;
  /// The DBCluster type.
  final String dbClusterType;
  /// The node class of the DBCluster.
  final String dbNodeClass;
  /// The node count of the DBCluster.
  final String dbNodeCount;
  /// The node storage of the DBCluster.
  final String dbNodeStorage;
  /// Key management service KMS key ID.
  final String encryptionKey;
  /// Currently only supports ECS disk encryption, with a value of CloudDisk, not encrypted when empty.
  final String encryptionType;
  /// The Engine of the DBCluster.
  final String engine;
  /// The engine version of the DBCluster.
  final String engineVersion;
  /// The expiration time of the DBCluster.
  final String expireTime;
  /// The ID of the DBCluster.
  final String id;
  /// If the instance has expired.
  final String isExpired;
  /// The lock mode of the DBCluster.
  final String lockMode;
  /// Lock reason of the DBCluster.
  final String lockReason;
  /// Examples of the maintenance window, in the format of hh:mmZ-hh:mm Z.
  final String maintainTime;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final String paymentType;
  /// Connection port.
  final int port;
  /// A public IP address for the connection.
  final String publicConnectionString;
  /// Public network port.
  final String publicPort;
  /// Scale state.
  final List<GetDbClustersClusterScaleOutStatus> scaleOutStatuses;
  /// The status of the DBCluster. Valid values: `Running`,`Creating`,`Deleting`,`Restarting`,`Preparing`.
  final String status;
  /// Storage type of DBCluster. Valid values: `cloud_essd`, `cloud_efficiency`, `cloud_essd_pl2`, `cloud_essd_pl3`.
  final String storageType;
  /// Support fallback scheme.
  final int supportBackup;
  /// The system supports http port number.
  final bool supportHttpsPort;
  /// Supports Mysql, and those of the ports.
  final bool supportMysqlPort;
  /// Virtual Private Cloud (VPC cloud instance ID.
  final String vpcCloudInstanceId;
  /// The VPC ID of the DBCluster.
  final String vpcId;
  /// The vswitch id of the DBCluster.
  final String vswitchId;
  /// The zone ID of the DBCluster.
  final String zoneId;

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
      'dbClusterAccessWhiteLists': pulumi.Input.encodeList<GetDbClustersClusterDbClusterAccessWhiteList, Map<String, dynamic>>(dbClusterAccessWhiteLists, (value) => value.toMap()),
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
      'scaleOutStatuses': pulumi.Input.encodeList<GetDbClustersClusterScaleOutStatus, Map<String, dynamic>>(scaleOutStatuses, (value) => value.toMap()),
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
      aliUid: map['aliUid'] as String,
      bid: map['bid'] as String,
      category: map['category'] as String,
      commodityCode: map['commodityCode'] as String,
      connectionString: map['connectionString'] as String,
      controlVersion: map['controlVersion'] as String,
      createTime: map['createTime'] as String,
      dbClusterAccessWhiteLists: pulumi.Input.decodeList<GetDbClustersClusterDbClusterAccessWhiteList>(map['dbClusterAccessWhiteLists'], (value) => GetDbClustersClusterDbClusterAccessWhiteList.fromMap((value as Map).cast<String, dynamic>())),
      dbClusterDescription: map['dbClusterDescription'] as String,
      dbClusterId: map['dbClusterId'] as String,
      dbClusterNetworkType: map['dbClusterNetworkType'] as String,
      dbClusterType: map['dbClusterType'] as String,
      dbNodeClass: map['dbNodeClass'] as String,
      dbNodeCount: map['dbNodeCount'] as String,
      dbNodeStorage: map['dbNodeStorage'] as String,
      encryptionKey: map['encryptionKey'] as String,
      encryptionType: map['encryptionType'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      isExpired: map['isExpired'] as String,
      lockMode: map['lockMode'] as String,
      lockReason: map['lockReason'] as String,
      maintainTime: map['maintainTime'] as String,
      paymentType: map['paymentType'] as String,
      port: map['port'] as int,
      publicConnectionString: map['publicConnectionString'] as String,
      publicPort: map['publicPort'] as String,
      scaleOutStatuses: pulumi.Input.decodeList<GetDbClustersClusterScaleOutStatus>(map['scaleOutStatuses'], (value) => GetDbClustersClusterScaleOutStatus.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      storageType: map['storageType'] as String,
      supportBackup: map['supportBackup'] as int,
      supportHttpsPort: map['supportHttpsPort'] as bool,
      supportMysqlPort: map['supportMysqlPort'] as bool,
      vpcCloudInstanceId: map['vpcCloudInstanceId'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

