// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_snapshot_cluster_configuration/get_snapshot_cluster_configuration.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult2 {
  /// ARN of the snapshot.
  final String arn;

  /// The configuration of the cluster from which the snapshot was taken.
  final List<GetSnapshotClusterConfiguration> clusterConfigurations;

  /// Name of the MemoryDB cluster that this snapshot was taken from.
  final String clusterName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARN of the KMS key used to encrypt the snapshot at rest.
  final String kmsKeyArn;

  /// Name of the cluster.
  final String name;
  final String region;

  /// Whether the snapshot is from an automatic backup (<span pulumi-lang-nodejs="`automated`" pulumi-lang-dotnet="`Automated`" pulumi-lang-go="`automated`" pulumi-lang-python="`automated`" pulumi-lang-yaml="`automated`" pulumi-lang-java="`automated`">`automated`</span>) or was created manually (<span pulumi-lang-nodejs="`manual`" pulumi-lang-dotnet="`Manual`" pulumi-lang-go="`manual`" pulumi-lang-python="`manual`" pulumi-lang-yaml="`manual`" pulumi-lang-java="`manual`">`manual`</span>).
  final String source;

  /// Map of tags assigned to the snapshot.
  final Map<String, String> tags;

  GetSnapshotResult2({
    required this.arn,
    required this.clusterConfigurations,
    required this.clusterName,
    required this.id,
    required this.kmsKeyArn,
    required this.name,
    required this.region,
    required this.source,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['clusterConfigurations'] =
        Input.encodeList<GetSnapshotClusterConfiguration, Map<String, dynamic>>(
            clusterConfigurations, (value) => value.toMap());
    map['clusterName'] = clusterName;
    map['id'] = id;
    map['kmsKeyArn'] = kmsKeyArn;
    map['name'] = name;
    map['region'] = region;
    map['source'] = source;
    map['tags'] = tags;
    return map;
  }

  factory GetSnapshotResult2.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult2(
      arn: map['arn'] as String,
      clusterConfigurations: Input.decodeList<GetSnapshotClusterConfiguration>(
          map['clusterConfigurations'],
          (value) => GetSnapshotClusterConfiguration.fromMap(
              (value as Map).cast<String, dynamic>())),
      clusterName: map['clusterName'] as String,
      id: map['id'] as String,
      kmsKeyArn: map['kmsKeyArn'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      source: map['source'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
