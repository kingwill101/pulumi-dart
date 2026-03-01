// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_database_networks_network_db_cluster.dart';

class GetGlobalDatabaseNetworksNetwork {
  /// The time when the Global Database Network was created. The time is in the YYYY-MM-DDThh:mm:ssZ format. The time is displayed in UTC.
  final String createTime;
  /// The details of each cluster in the Global Database Network.
  final List<GetGlobalDatabaseNetworksNetworkDbCluster> dbClusters;
  /// The type of the database engine. Only MySQL is supported.
  final String dbType;
  /// The version number of the database engine. Only the 8.0 version is supported.
  final String dbVersion;
  /// The description of the Global Database Network.
  final String description;
  /// The ID of the Global Database Network.
  final String gdnId;
  /// The ID of the Global Database Network.
  final String id;
  /// The status of the Global Database Network. Valid values:
  final String status;

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
      'dbClusters': pulumi.Input.encodeList<GetGlobalDatabaseNetworksNetworkDbCluster, Map<String, dynamic>>(dbClusters, (value) => value.toMap()),
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
      createTime: map['createTime'] as String,
      dbClusters: pulumi.Input.decodeList<GetGlobalDatabaseNetworksNetworkDbCluster>(map['dbClusters'], (value) => GetGlobalDatabaseNetworksNetworkDbCluster.fromMap((value as Map).cast<String, dynamic>())),
      dbType: map['dbType'] as String,
      dbVersion: map['dbVersion'] as String,
      description: map['description'] as String,
      gdnId: map['gdnId'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

