// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_cluster_member.dart';

/// Result data returned by getGlobalCluster.
class GetGlobalClusterResult {
  /// RDS Global Cluster Amazon Resource Name (ARN)
  final String arn;
  /// Name of the automatically created database on cluster creation.
  final String databaseName;
  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`.
  final bool deletionProtection;
  /// The endpoint for the Global Cluster.
  final String endpoint;
  /// Name of the database engine.
  final String engine;
  /// The current lifecycle support status of the database engine for this Global Cluster.
  final String engineLifecycleSupport;
  /// Version of the database engine for this Global Cluster.
  final String engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String identifier;
  /// Set of objects containing Global Cluster members.
  final List<GetGlobalClusterMember> members;
  final String region;
  /// AWS Region-unique, immutable identifier for the global database cluster.
  final String resourceId;
  /// Whether the DB cluster is encrypted.
  final bool storageEncrypted;
  /// A map of tags to assigned to the Global Cluster.
  final Map<String, String> tags;

  /// Creates a new [GetGlobalClusterResult].
  /// [arn] RDS Global Cluster Amazon Resource Name (ARN)
  /// [databaseName] Name of the automatically created database on cluster creation.
  /// [deletionProtection] If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`.
  /// [endpoint] The endpoint for the Global Cluster.
  /// [engine] Name of the database engine.
  /// [engineLifecycleSupport] The current lifecycle support status of the database engine for this Global Cluster.
  /// [engineVersion] Version of the database engine for this Global Cluster.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identifier] Required.
  /// [members] Set of objects containing Global Cluster members.
  /// [region] Required.
  /// [resourceId] AWS Region-unique, immutable identifier for the global database cluster.
  /// [storageEncrypted] Whether the DB cluster is encrypted.
  /// [tags] A map of tags to assigned to the Global Cluster.
  GetGlobalClusterResult({
    required this.arn,
    required this.databaseName,
    required this.deletionProtection,
    required this.endpoint,
    required this.engine,
    required this.engineLifecycleSupport,
    required this.engineVersion,
    required this.id,
    required this.identifier,
    required this.members,
    required this.region,
    required this.resourceId,
    required this.storageEncrypted,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'databaseName': databaseName,
      'deletionProtection': deletionProtection,
      'endpoint': endpoint,
      'engine': engine,
      'engineLifecycleSupport': engineLifecycleSupport,
      'engineVersion': engineVersion,
      'id': id,
      'identifier': identifier,
      'members': pulumi.Input.encodeList<GetGlobalClusterMember, Map<String, dynamic>>(members, (value) => value.toMap()),
      'region': region,
      'resourceId': resourceId,
      'storageEncrypted': storageEncrypted,
      'tags': tags,
    };
  }

  factory GetGlobalClusterResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalClusterResult(
      arn: map['arn'] as String,
      databaseName: map['databaseName'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      endpoint: map['endpoint'] as String,
      engine: map['engine'] as String,
      engineLifecycleSupport: map['engineLifecycleSupport'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      identifier: map['identifier'] as String,
      members: pulumi.Input.decodeList<GetGlobalClusterMember>(map['members']!, (value) => GetGlobalClusterMember.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      resourceId: map['resourceId'] as String,
      storageEncrypted: map['storageEncrypted'] as bool,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

