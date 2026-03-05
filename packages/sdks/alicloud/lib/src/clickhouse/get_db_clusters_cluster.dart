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
      aliUid: pulumi.Input.fromValue(map['aliUid'] as String),
      bid: pulumi.Input.fromValue(map['bid'] as String),
      category: pulumi.Input.fromValue(map['category'] as String),
      commodityCode: pulumi.Input.fromValue(map['commodityCode'] as String),
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      controlVersion: pulumi.Input.fromValue(map['controlVersion'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dbClusterAccessWhiteLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDbClustersClusterDbClusterAccessWhiteList>(map['dbClusterAccessWhiteLists']!, (value) => GetDbClustersClusterDbClusterAccessWhiteList.fromMap((value as Map).cast<String, dynamic>()))),
      dbClusterDescription: pulumi.Input.fromValue(map['dbClusterDescription'] as String),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      dbClusterNetworkType: pulumi.Input.fromValue(map['dbClusterNetworkType'] as String),
      dbClusterType: pulumi.Input.fromValue(map['dbClusterType'] as String),
      dbNodeClass: pulumi.Input.fromValue(map['dbNodeClass'] as String),
      dbNodeCount: pulumi.Input.fromValue(map['dbNodeCount'] as String),
      dbNodeStorage: pulumi.Input.fromValue(map['dbNodeStorage'] as String),
      encryptionKey: pulumi.Input.fromValue(map['encryptionKey'] as String),
      encryptionType: pulumi.Input.fromValue(map['encryptionType'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isExpired: pulumi.Input.fromValue(map['isExpired'] as String),
      lockMode: pulumi.Input.fromValue(map['lockMode'] as String),
      lockReason: pulumi.Input.fromValue(map['lockReason'] as String),
      maintainTime: pulumi.Input.fromValue(map['maintainTime'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      publicConnectionString: pulumi.Input.fromValue(map['publicConnectionString'] as String),
      publicPort: pulumi.Input.fromValue(map['publicPort'] as String),
      scaleOutStatuses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDbClustersClusterScaleOutStatus>(map['scaleOutStatuses']!, (value) => GetDbClustersClusterScaleOutStatus.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
      supportBackup: pulumi.Input.fromValue(map['supportBackup'] as int),
      supportHttpsPort: pulumi.Input.fromValue(map['supportHttpsPort'] as bool),
      supportMysqlPort: pulumi.Input.fromValue(map['supportMysqlPort'] as bool),
      vpcCloudInstanceId: pulumi.Input.fromValue(map['vpcCloudInstanceId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

