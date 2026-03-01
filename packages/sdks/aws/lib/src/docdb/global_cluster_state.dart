// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_cluster_global_cluster_member.dart';

/// Input properties used for looking up and filtering GlobalCluster resources.
class GlobalClusterState {
  /// Global Cluster Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;
  /// Name for an automatically created database on cluster creation.
  final pulumi.Input<String>? databaseName;
  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  final pulumi.Input<bool>? deletionProtection;
  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `docdb`. Defaults to `docdb`. Conflicts with `source_db_cluster_identifier`.
  final pulumi.Input<String>? engine;
  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  /// * **NOTE:** Upgrading major versions is not supported.
  final pulumi.Input<String>? engineVersion;
  /// The global cluster identifier.
  final pulumi.Input<String>? globalClusterIdentifier;
  /// Set of objects containing Global Cluster members.
  final pulumi.Input<List<GlobalClusterGlobalClusterMember>>? globalClusterMembers;
  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  final pulumi.Input<String>? globalClusterResourceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value.
  final pulumi.Input<String>? sourceDbClusterIdentifier;
  final pulumi.Input<String>? status;
  /// Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<bool>? storageEncrypted;

  /// Creates a new [GlobalClusterState].
  /// [arn] Global Cluster Amazon Resource Name (ARN)
  /// [databaseName] Name for an automatically created database on cluster creation.
  /// [deletionProtection] If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  /// [engine] Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `docdb`. Defaults to `docdb`. Conflicts with `source_db_cluster_identifier`.
  /// [engineVersion] Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  /// [globalClusterIdentifier] The global cluster identifier.
  /// [globalClusterMembers] Set of objects containing Global Cluster members.
  /// [globalClusterResourceId] AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceDbClusterIdentifier] Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value.
  /// [status] Optional.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  GlobalClusterState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? databaseName,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? globalClusterIdentifier,
    pulumi.Output<List<GlobalClusterGlobalClusterMember>>? globalClusterMembers,
    pulumi.Output<String>? globalClusterResourceId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sourceDbClusterIdentifier,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? storageEncrypted,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      globalClusterIdentifier = pulumi.Input.asOptionalInput<String>(globalClusterIdentifier),
      globalClusterMembers = pulumi.Input.asOptionalInput<List<GlobalClusterGlobalClusterMember>>(globalClusterMembers),
      globalClusterResourceId = pulumi.Input.asOptionalInput<String>(globalClusterResourceId),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceDbClusterIdentifier = pulumi.Input.asOptionalInput<String>(sourceDbClusterIdentifier),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'databaseName': ?databaseName,
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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      globalClusterIdentifier: map['globalClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['globalClusterIdentifier'] as String),
      globalClusterMembers: map['globalClusterMembers'] == null ? null : pulumi.Output.create<List<GlobalClusterGlobalClusterMember>>(pulumi.Input.decodeList<GlobalClusterGlobalClusterMember>(map['globalClusterMembers'], (value) => GlobalClusterGlobalClusterMember.fromMap((value as Map).cast<String, dynamic>()))),
      globalClusterResourceId: map['globalClusterResourceId'] == null ? null : pulumi.Output.create<String>(map['globalClusterResourceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceDbClusterIdentifier: map['sourceDbClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['sourceDbClusterIdentifier'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageEncrypted: map['storageEncrypted'] == null ? null : pulumi.Output.create<bool>(map['storageEncrypted'] as bool),
    );
  }
}

