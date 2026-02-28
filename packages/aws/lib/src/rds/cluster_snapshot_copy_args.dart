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
    bool? copyTags,
    String? destinationRegion,
    String? kmsKeyId,
    String? presignedUrl,
    String? region,
    List<String>? sharedAccounts,
    required String sourceDbClusterSnapshotIdentifier,
    Map<String, String>? tags,
    required String targetDbClusterSnapshotIdentifier,
    ClusterSnapshotCopyTimeouts? timeouts,
  })  : copyTags = pulumi.Input.asOptionalInput<bool>(copyTags),
        destinationRegion =
            pulumi.Input.asOptionalInput<String>(destinationRegion),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        presignedUrl = pulumi.Input.asOptionalInput<String>(presignedUrl),
        region = pulumi.Input.asOptionalInput<String>(region),
        sharedAccounts =
            pulumi.Input.asOptionalInput<List<String>>(sharedAccounts),
        sourceDbClusterSnapshotIdentifier =
            pulumi.Input.asInput<String>(sourceDbClusterSnapshotIdentifier),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        targetDbClusterSnapshotIdentifier =
            pulumi.Input.asInput<String>(targetDbClusterSnapshotIdentifier),
        timeouts =
            pulumi.Input.asOptionalInput<ClusterSnapshotCopyTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final copyTagsValue = copyTags;
    if (copyTagsValue != null) {
      map['copyTags'] = copyTagsValue;
    }
    final destinationRegionValue = destinationRegion;
    if (destinationRegionValue != null) {
      map['destinationRegion'] = destinationRegionValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final presignedUrlValue = presignedUrl;
    if (presignedUrlValue != null) {
      map['presignedUrl'] = presignedUrlValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sharedAccountsValue = sharedAccounts;
    if (sharedAccountsValue != null) {
      map['sharedAccounts'] = sharedAccountsValue;
    }
    map['sourceDbClusterSnapshotIdentifier'] =
        sourceDbClusterSnapshotIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetDbClusterSnapshotIdentifier'] =
        targetDbClusterSnapshotIdentifier;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ClusterSnapshotCopyTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterSnapshotCopyArgs.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotCopyArgs(
      copyTags: map['copyTags'] == null ? null : map['copyTags'] as bool,
      destinationRegion: map['destinationRegion'] == null
          ? null
          : map['destinationRegion'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      presignedUrl:
          map['presignedUrl'] == null ? null : map['presignedUrl'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sharedAccounts: map['sharedAccounts'] == null
          ? null
          : (map['sharedAccounts'] as List).cast<String>(),
      sourceDbClusterSnapshotIdentifier:
          map['sourceDbClusterSnapshotIdentifier'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetDbClusterSnapshotIdentifier:
          map['targetDbClusterSnapshotIdentifier'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : ClusterSnapshotCopyTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
