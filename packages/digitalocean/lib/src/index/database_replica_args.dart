// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_replica_database_replica_args_doc}
/// The set of arguments for DatabaseReplica.
/// {@endtemplate}
/// {@macro pulumi_index_database_replica_database_replica_args_doc}
class DatabaseReplicaArgs {
  /// The ID of the original source database cluster.
  final pulumi.Input<String> clusterId;
  /// The name for the database replica.
  final pulumi.Input<String>? name;
  /// The ID of the VPC where the database replica will be located.
  final pulumi.Input<String>? privateNetworkUuid;
  /// DigitalOcean region where the replica will reside.
  final pulumi.Input<String>? region;
  /// Database Droplet size associated with the replica (ex. `db-s-1vcpu-1gb`). Note that when resizing an existing replica, its size can only be increased. Decreasing its size is not supported.
  final pulumi.Input<String>? size;
  final pulumi.Input<String>? storageSizeMib;
  /// A list of tag names to be applied to the database replica.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [DatabaseReplicaArgs].
  /// [clusterId] The ID of the original source database cluster.
  /// [name] The name for the database replica.
  /// [privateNetworkUuid] The ID of the VPC where the database replica will be located.
  /// [region] DigitalOcean region where the replica will reside.
  /// [size] Database Droplet size associated with the replica (ex. `db-s-1vcpu-1gb`). Note that when resizing an existing replica, its size can only be increased. Decreasing its size is not supported.
  /// [storageSizeMib] Optional.
  /// [tags] A list of tag names to be applied to the database replica.
  DatabaseReplicaArgs({
    required String clusterId,
    String? name,
    String? privateNetworkUuid,
    String? region,
    String? size,
    String? storageSizeMib,
    List<String>? tags,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateNetworkUuid = pulumi.Input.asOptionalInput<String>(privateNetworkUuid),
      region = pulumi.Input.asOptionalInput<String>(region),
      size = pulumi.Input.asOptionalInput<String>(size),
      storageSizeMib = pulumi.Input.asOptionalInput<String>(storageSizeMib),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': ?name,
      'privateNetworkUuid': ?privateNetworkUuid,
      'region': ?region,
      'size': ?size,
      'storageSizeMib': ?storageSizeMib,
      'tags': ?tags,
    };
  }

  factory DatabaseReplicaArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseReplicaArgs(
      clusterId: map['clusterId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateNetworkUuid: map['privateNetworkUuid'] == null ? null : map['privateNetworkUuid'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      storageSizeMib: map['storageSizeMib'] == null ? null : map['storageSizeMib'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

