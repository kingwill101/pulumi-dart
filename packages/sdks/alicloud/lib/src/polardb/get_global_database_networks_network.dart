// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_database_networks_network_db_cluster.dart';

class GetGlobalDatabaseNetworksNetwork {
  /// The time when the Global Database Network was created. The time is in the YYYY-MM-DDThh:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> createTime;
  /// The details of each cluster in the Global Database Network.
  final pulumi.Input<List<GetGlobalDatabaseNetworksNetworkDbCluster>> dbClusters;
  /// The type of the database engine. Only MySQL is supported.
  final pulumi.Input<String> dbType;
  /// The version number of the database engine. Only the 8.0 version is supported.
  final pulumi.Input<String> dbVersion;
  /// The description of the Global Database Network.
  final pulumi.Input<String> description;
  /// The ID of the Global Database Network.
  final pulumi.Input<String> gdnId;
  /// The ID of the Global Database Network.
  final pulumi.Input<String> id;
  /// The status of the Global Database Network. Valid values:
  final pulumi.Input<String> status;

  /// Creates a new [GetGlobalDatabaseNetworksNetwork].
  /// [createTime] The time when the Global Database Network was created. The time is in the YYYY-MM-DDThh:mm:ssZ format. The time is displayed in UTC.
  /// [dbClusters] The details of each cluster in the Global Database Network.
  /// [dbType] The type of the database engine. Only MySQL is supported.
  /// [dbVersion] The version number of the database engine. Only the 8.0 version is supported.
  /// [description] The description of the Global Database Network.
  /// [gdnId] The ID of the Global Database Network.
  /// [id] The ID of the Global Database Network.
  /// [status] The status of the Global Database Network. Valid values:
  GetGlobalDatabaseNetworksNetwork({
    required this.createTime,
    required this.dbClusters,
    required this.dbType,
    required this.dbVersion,
    required this.description,
    required this.gdnId,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dbClusters': pulumi.Input.mapInputValue<List<GetGlobalDatabaseNetworksNetworkDbCluster>, List<Map<String, dynamic>>>(dbClusters, (value) => pulumi.Input.encodeList<GetGlobalDatabaseNetworksNetworkDbCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbType': dbType,
      'dbVersion': dbVersion,
      'description': description,
      'gdnId': gdnId,
      'id': id,
      'status': status,
    };
  }

  factory GetGlobalDatabaseNetworksNetwork.fromMap(Map<String, dynamic> map) {
    return GetGlobalDatabaseNetworksNetwork(
      createTime: (map['createTime'] as String).input(),
      dbClusters: (pulumi.Input.decodeList<GetGlobalDatabaseNetworksNetworkDbCluster>(map['dbClusters'], (value) => GetGlobalDatabaseNetworksNetworkDbCluster.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbType: (map['dbType'] as String).input(),
      dbVersion: (map['dbVersion'] as String).input(),
      description: (map['description'] as String).input(),
      gdnId: (map['gdnId'] as String).input(),
      id: (map['id'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

