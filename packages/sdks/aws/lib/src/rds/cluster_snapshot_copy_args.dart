// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_snapshot_copy_timeouts.dart';

/// {@template pulumi_rds_cluster_snapshot_copy_cluster_snapshot_copy_args_doc}
/// The set of arguments for ClusterSnapshotCopy.
/// {@endtemplate}
/// {@macro pulumi_rds_cluster_snapshot_copy_cluster_snapshot_copy_args_doc}
class ClusterSnapshotCopyArgs {
  /// Whether to copy existing tags. Defaults to `false`.
  final pulumi.Input<bool>? copyTags;

  /// The Destination region to place snapshot copy.
  final pulumi.Input<String>? destinationRegion;

  /// KMS key ID.
  final pulumi.Input<String>? kmsKeyId;

  /// URL that contains a Signature Version 4 signed request.
  final pulumi.Input<String>? presignedUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final pulumi.Input<List<String>>? sharedAccounts;

  /// Identifier of the source snapshot.
  final pulumi.Input<String> sourceDbClusterSnapshotIdentifier;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier for the snapshot.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> targetDbClusterSnapshotIdentifier;
  final pulumi.Input<ClusterSnapshotCopyTimeouts>? timeouts;

  /// Creates a new [ClusterSnapshotCopyArgs].
  /// [copyTags] Whether to copy existing tags. Defaults to `false`.
  /// [destinationRegion] The Destination region to place snapshot copy.
  /// [kmsKeyId] KMS key ID.
  /// [presignedUrl] URL that contains a Signature Version 4 signed request.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedAccounts] List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  /// [sourceDbClusterSnapshotIdentifier] Identifier of the source snapshot.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetDbClusterSnapshotIdentifier] Identifier for the snapshot.
  /// [timeouts] Optional.
  ClusterSnapshotCopyArgs({
    this.copyTags,
    this.destinationRegion,
    this.kmsKeyId,
    this.presignedUrl,
    this.region,
    this.sharedAccounts,
    required this.sourceDbClusterSnapshotIdentifier,
    this.tags,
    required this.targetDbClusterSnapshotIdentifier,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyTags': ?copyTags,
      'destinationRegion': ?destinationRegion,
      'kmsKeyId': ?kmsKeyId,
      'presignedUrl': ?presignedUrl,
      'region': ?region,
      'sharedAccounts': ?sharedAccounts,
      'sourceDbClusterSnapshotIdentifier': sourceDbClusterSnapshotIdentifier,
      'tags': ?tags,
      'targetDbClusterSnapshotIdentifier': targetDbClusterSnapshotIdentifier,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterSnapshotCopyTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory ClusterSnapshotCopyArgs.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotCopyArgs(
      copyTags: (() {
        final guardedValue = map['copyTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      destinationRegion: (() {
        final guardedValue = map['destinationRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      presignedUrl: (() {
        final guardedValue = map['presignedUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedAccounts: (() {
        final guardedValue = map['sharedAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sourceDbClusterSnapshotIdentifier: pulumi.Input.fromValue(
        map['sourceDbClusterSnapshotIdentifier'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetDbClusterSnapshotIdentifier: pulumi.Input.fromValue(
        map['targetDbClusterSnapshotIdentifier'] as String,
      ),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterSnapshotCopyTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
