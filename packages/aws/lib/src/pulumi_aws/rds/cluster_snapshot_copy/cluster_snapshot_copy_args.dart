// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_snapshot_copy_timeouts/cluster_snapshot_copy_timeouts.dart';

/// The set of arguments for ClusterSnapshotCopy.
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
      copyTags: pulumi.Input.asOptionalInput<bool>(map['copyTags']),
      destinationRegion:
          pulumi.Input.asOptionalInput<String>(map['destinationRegion']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      presignedUrl: pulumi.Input.asOptionalInput<String>(map['presignedUrl']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sharedAccounts:
          pulumi.Input.asOptionalInput<List<String>>(map['sharedAccounts']),
      sourceDbClusterSnapshotIdentifier: pulumi.Input.asInput<String>(
          map['sourceDbClusterSnapshotIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetDbClusterSnapshotIdentifier: pulumi.Input.asInput<String>(
          map['targetDbClusterSnapshotIdentifier']),
      timeouts: pulumi.Input.asOptionalInput<ClusterSnapshotCopyTimeouts>(
          map['timeouts']),
    );
  }
}
