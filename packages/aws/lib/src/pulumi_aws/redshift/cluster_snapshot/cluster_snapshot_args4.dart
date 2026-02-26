// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ClusterSnapshot.
class ClusterSnapshotArgs4 {
  /// The cluster identifier for which you want a snapshot.
  final Input<String> clusterIdentifier;

  /// The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`3653`" pulumi-lang-dotnet="`3653`" pulumi-lang-go="`3653`" pulumi-lang-python="`3653`" pulumi-lang-yaml="`3653`" pulumi-lang-java="`3653`">`3653`</span>.
  final Input<int>? manualSnapshotRetentionPeriod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  final Input<String> snapshotIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ClusterSnapshotArgs4({
    required this.clusterIdentifier,
    this.manualSnapshotRetentionPeriod,
    this.region,
    required this.snapshotIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIdentifier'] = clusterIdentifier;
    final manualSnapshotRetentionPeriodValue = manualSnapshotRetentionPeriod;
    if (manualSnapshotRetentionPeriodValue != null) {
      map['manualSnapshotRetentionPeriod'] = manualSnapshotRetentionPeriodValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['snapshotIdentifier'] = snapshotIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterSnapshotArgs4.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotArgs4(
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      manualSnapshotRetentionPeriod:
          Input.asOptionalInput<int>(map['manualSnapshotRetentionPeriod']),
      region: Input.asOptionalInput<String>(map['region']),
      snapshotIdentifier: Input.asInput<String>(map['snapshotIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
