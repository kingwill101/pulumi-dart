// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_cluster_configuration.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// ARN of the snapshot.
  final String? arn;
  /// The configuration of the cluster from which the snapshot was taken.
  final List<GetSnapshotClusterConfiguration>? clusterConfigurations;
  /// Name of the MemoryDB cluster that this snapshot was taken from.
  final String? clusterName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN of the KMS key used to encrypt the snapshot at rest.
  final String? kmsKeyArn;
  /// Name of the cluster.
  final String? name;
  final String? region;
  /// Whether the snapshot is from an automatic backup (`automated`) or was created manually (`manual`).
  final String? source;
  /// Map of tags assigned to the snapshot.
  final Map<String, String>? tags;

  /// Creates a new [GetSnapshotResult].
  /// [arn] ARN of the snapshot.
  /// [clusterConfigurations] The configuration of the cluster from which the snapshot was taken.
  /// [clusterName] Name of the MemoryDB cluster that this snapshot was taken from.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the snapshot at rest.
  /// [name] Name of the cluster.
  /// [region] Optional.
  /// [source] Whether the snapshot is from an automatic backup (`automated`) or was created manually (`manual`).
  /// [tags] Map of tags assigned to the snapshot.
  const GetSnapshotResult({
    this.arn,
    this.clusterConfigurations,
    this.clusterName,
    this.id,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.source,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterConfigurations': ?(() { final guardedValue = clusterConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotClusterConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterName': ?clusterName,
      'id': ?id,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'source': ?source,
      'tags': ?tags,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterConfigurations: (() { final guardedValue = map['clusterConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotClusterConfiguration>(guardedValue, (value) => GetSnapshotClusterConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
