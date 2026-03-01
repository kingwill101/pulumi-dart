// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_database_info_response.dart';

/// Describes a MongoDB data source
class MongoDbClusterInfoResponse {
  /// A list of non-system databases in the cluster
  final List<MongoDbDatabaseInfoResponse> databases;
  /// Whether the cluster supports sharded collections
  final bool supportsSharding;
  /// The type of data source
  final String type;
  /// The version of the data source in the form x.y.z (e.g. 3.6.7). Not used if Type is BlobContainer.
  final String version;

  /// Creates a new [MongoDbClusterInfoResponse].
  /// [databases] A list of non-system databases in the cluster
  /// [supportsSharding] Whether the cluster supports sharded collections
  /// [type] The type of data source
  /// [version] The version of the data source in the form x.y.z (e.g. 3.6.7). Not used if Type is BlobContainer.
  MongoDbClusterInfoResponse({
    required this.databases,
    required this.supportsSharding,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': pulumi.Input.encodeList<MongoDbDatabaseInfoResponse, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'supportsSharding': supportsSharding,
      'type': type,
      'version': version,
    };
  }

  factory MongoDbClusterInfoResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbClusterInfoResponse(
      databases: pulumi.Input.decodeList<MongoDbDatabaseInfoResponse>(map['databases'], (value) => MongoDbDatabaseInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      supportsSharding: map['supportsSharding'] as bool,
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

