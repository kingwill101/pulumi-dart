// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_snapshot_copy_snapshot_copy_args_doc}
/// The set of arguments for SnapshotCopy.
/// {@endtemplate}
/// {@macro pulumi_rds_snapshot_copy_snapshot_copy_args_doc}
class SnapshotCopyArgs {
  /// Whether to copy existing tags. Defaults to `false`.
  final pulumi.Input<bool>? copyTags;
  /// The Destination region to place snapshot copy.
  final pulumi.Input<String>? destinationRegion;
  /// KMS key ID.
  final pulumi.Input<String>? kmsKeyId;
  /// The name of an option group to associate with the copy of the snapshot.
  final pulumi.Input<String>? optionGroupName;
  /// he URL that contains a Signature Version 4 signed request.
  final pulumi.Input<String>? presignedUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final pulumi.Input<List<String>>? sharedAccounts;
  /// Snapshot identifier of the source snapshot.
  final pulumi.Input<String> sourceDbSnapshotIdentifier;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The external custom Availability Zone.
  final pulumi.Input<String>? targetCustomAvailabilityZone;
  /// The Identifier for the snapshot.
  final pulumi.Input<String> targetDbSnapshotIdentifier;

  /// Creates a new [SnapshotCopyArgs].
  /// [copyTags] Whether to copy existing tags. Defaults to `false`.
  /// [destinationRegion] The Destination region to place snapshot copy.
  /// [kmsKeyId] KMS key ID.
  /// [optionGroupName] The name of an option group to associate with the copy of the snapshot.
  /// [presignedUrl] he URL that contains a Signature Version 4 signed request.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedAccounts] List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  /// [sourceDbSnapshotIdentifier] Snapshot identifier of the source snapshot.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetCustomAvailabilityZone] The external custom Availability Zone.
  /// [targetDbSnapshotIdentifier] The Identifier for the snapshot.
  const SnapshotCopyArgs({
    this.copyTags,
    this.destinationRegion,
    this.kmsKeyId,
    this.optionGroupName,
    this.presignedUrl,
    this.region,
    this.sharedAccounts,
    required this.sourceDbSnapshotIdentifier,
    this.tags,
    this.targetCustomAvailabilityZone,
    required this.targetDbSnapshotIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyTags': ?copyTags,
      'destinationRegion': ?destinationRegion,
      'kmsKeyId': ?kmsKeyId,
      'optionGroupName': ?optionGroupName,
      'presignedUrl': ?presignedUrl,
      'region': ?region,
      'sharedAccounts': ?sharedAccounts,
      'sourceDbSnapshotIdentifier': sourceDbSnapshotIdentifier,
      'tags': ?tags,
      'targetCustomAvailabilityZone': ?targetCustomAvailabilityZone,
      'targetDbSnapshotIdentifier': targetDbSnapshotIdentifier,
    };
  }

  factory SnapshotCopyArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyArgs(
      copyTags: (() { final guardedValue = map['copyTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      destinationRegion: (() { final guardedValue = map['destinationRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionGroupName: (() { final guardedValue = map['optionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      presignedUrl: (() { final guardedValue = map['presignedUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedAccounts: (() { final guardedValue = map['sharedAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceDbSnapshotIdentifier: pulumi.Input.fromValue(map['sourceDbSnapshotIdentifier'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetCustomAvailabilityZone: (() { final guardedValue = map['targetCustomAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDbSnapshotIdentifier: pulumi.Input.fromValue(map['targetDbSnapshotIdentifier'] as String),
    );
  }
}

