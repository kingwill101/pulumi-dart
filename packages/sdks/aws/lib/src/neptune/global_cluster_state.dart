// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_cluster_global_cluster_member.dart';

/// Input properties used for looking up and filtering GlobalCluster resources.
class GlobalClusterState {
  /// Global Cluster ARN
  final pulumi.Input<String>? arn;
  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  final pulumi.Input<bool>? deletionProtection;
  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `neptune`. Conflicts with `sourceDbClusterIdentifier`.
  final pulumi.Input<String>? engine;
  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  final pulumi.Input<String>? engineVersion;
  /// Global cluster identifier.
  final pulumi.Input<String>? globalClusterIdentifier;
  /// Set of objects containing Global Cluster members.
  final pulumi.Input<List<GlobalClusterGlobalClusterMember>>? globalClusterMembers;
  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  final pulumi.Input<String>? globalClusterResourceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN to use as the primary DB Cluster of the Global Cluster on creation. Pulumi cannot perform drift detection of this value.
  final pulumi.Input<String>? sourceDbClusterIdentifier;
  final pulumi.Input<String>? status;
  /// Whether the DB cluster is encrypted. The default is `false` unless `sourceDbClusterIdentifier` is specified and encrypted. Pulumi will only perform drift detection if a configuration value is provided.
  final pulumi.Input<bool>? storageEncrypted;

  /// Creates a new [GlobalClusterState].
  /// [arn] Global Cluster ARN
  /// [deletionProtection] If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  /// [engine] Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `neptune`. Conflicts with `sourceDbClusterIdentifier`.
  /// [engineVersion] Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [globalClusterMembers] Set of objects containing Global Cluster members.
  /// [globalClusterResourceId] AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceDbClusterIdentifier] ARN to use as the primary DB Cluster of the Global Cluster on creation. Pulumi cannot perform drift detection of this value.
  /// [status] Optional.
  /// [storageEncrypted] Whether the DB cluster is encrypted. The default is `false` unless `sourceDbClusterIdentifier` is specified and encrypted. Pulumi will only perform drift detection if a configuration value is provided.
  const GlobalClusterState({
    this.arn,
    this.deletionProtection,
    this.engine,
    this.engineVersion,
    this.globalClusterIdentifier,
    this.globalClusterMembers,
    this.globalClusterResourceId,
    this.region,
    this.sourceDbClusterIdentifier,
    this.status,
    this.storageEncrypted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deletionProtection': ?deletionProtection,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'globalClusterIdentifier': ?globalClusterIdentifier,
      'globalClusterMembers': ?pulumi.Input.mapOptionalInputValue<List<GlobalClusterGlobalClusterMember>, List<Map<String, dynamic>>>(globalClusterMembers, (value) => pulumi.Input.encodeList<GlobalClusterGlobalClusterMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalClusterResourceId': ?globalClusterResourceId,
      'region': ?region,
      'sourceDbClusterIdentifier': ?sourceDbClusterIdentifier,
      'status': ?status,
      'storageEncrypted': ?storageEncrypted,
    };
  }

  factory GlobalClusterState.fromMap(Map<String, dynamic> map) {
    return GlobalClusterState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterIdentifier: (() { final guardedValue = map['globalClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterMembers: (() { final guardedValue = map['globalClusterMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalClusterGlobalClusterMember>(guardedValue, (value) => GlobalClusterGlobalClusterMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      globalClusterResourceId: (() { final guardedValue = map['globalClusterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbClusterIdentifier: (() { final guardedValue = map['sourceDbClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
