// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_cluster_member.dart';

/// Result data returned by getGlobalCluster.
class GetGlobalClusterResult {
  /// RDS Global Cluster ARN
  final String? arn;
  /// Name of the automatically created database on cluster creation.
  final String? databaseName;
  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`.
  final bool? deletionProtection;
  /// The endpoint for the Global Cluster.
  final String? endpoint;
  /// Name of the database engine.
  final String? engine;
  /// The current lifecycle support status of the database engine for this Global Cluster.
  final String? engineLifecycleSupport;
  /// Version of the database engine for this Global Cluster.
  final String? engineVersion;
  final String? identifier;
  /// Set of objects containing Global Cluster members.
  final List<GetGlobalClusterMember>? members;
  final String? region;
  /// AWS Region-unique, immutable identifier for the global database cluster.
  final String? resourceId;
  /// Whether the DB cluster is encrypted.
  final bool? storageEncrypted;
  /// A map of tags to assigned to the Global Cluster.
  final Map<String, String>? tags;

  /// Creates a new [GetGlobalClusterResult].
  /// [arn] RDS Global Cluster ARN
  /// [databaseName] Name of the automatically created database on cluster creation.
  /// [deletionProtection] If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`.
  /// [endpoint] The endpoint for the Global Cluster.
  /// [engine] Name of the database engine.
  /// [engineLifecycleSupport] The current lifecycle support status of the database engine for this Global Cluster.
  /// [engineVersion] Version of the database engine for this Global Cluster.
  /// [identifier] Optional.
  /// [members] Set of objects containing Global Cluster members.
  /// [region] Optional.
  /// [resourceId] AWS Region-unique, immutable identifier for the global database cluster.
  /// [storageEncrypted] Whether the DB cluster is encrypted.
  /// [tags] A map of tags to assigned to the Global Cluster.
  const GetGlobalClusterResult({
    this.arn,
    this.databaseName,
    this.deletionProtection,
    this.endpoint,
    this.engine,
    this.engineLifecycleSupport,
    this.engineVersion,
    this.identifier,
    this.members,
    this.region,
    this.resourceId,
    this.storageEncrypted,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'databaseName': ?databaseName,
      'deletionProtection': ?deletionProtection,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineLifecycleSupport': ?engineLifecycleSupport,
      'engineVersion': ?engineVersion,
      'identifier': ?identifier,
      'members': ?(() { final guardedValue = members; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGlobalClusterMember, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'resourceId': ?resourceId,
      'storageEncrypted': ?storageEncrypted,
      'tags': ?tags,
    };
  }

  factory GetGlobalClusterResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalClusterResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineLifecycleSupport: (() { final guardedValue = map['engineLifecycleSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGlobalClusterMember>(guardedValue, (value) => GetGlobalClusterMember.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
