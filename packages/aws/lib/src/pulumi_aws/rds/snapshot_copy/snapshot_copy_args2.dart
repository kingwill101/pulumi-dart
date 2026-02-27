// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SnapshotCopy.
class SnapshotCopyArgs2 {
  /// Whether to copy existing tags. Defaults to `false`.
  final Input<bool>? copyTags;

  /// The Destination region to place snapshot copy.
  final Input<String>? destinationRegion;

  /// KMS key ID.
  final Input<String>? kmsKeyId;

  /// The name of an option group to associate with the copy of the snapshot.
  final Input<String>? optionGroupName;

  /// he URL that contains a Signature Version 4 signed request.
  final Input<String>? presignedUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final Input<List<String>>? sharedAccounts;

  /// Snapshot identifier of the source snapshot.
  final Input<String> sourceDbSnapshotIdentifier;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The external custom Availability Zone.
  final Input<String>? targetCustomAvailabilityZone;

  /// The Identifier for the snapshot.
  final Input<String> targetDbSnapshotIdentifier;

  SnapshotCopyArgs2({
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
    final optionGroupNameValue = optionGroupName;
    if (optionGroupNameValue != null) {
      map['optionGroupName'] = optionGroupNameValue;
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
    map['sourceDbSnapshotIdentifier'] = sourceDbSnapshotIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetCustomAvailabilityZoneValue = targetCustomAvailabilityZone;
    if (targetCustomAvailabilityZoneValue != null) {
      map['targetCustomAvailabilityZone'] = targetCustomAvailabilityZoneValue;
    }
    map['targetDbSnapshotIdentifier'] = targetDbSnapshotIdentifier;
    return map;
  }

  factory SnapshotCopyArgs2.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyArgs2(
      copyTags: Input.asOptionalInput<bool>(map['copyTags']),
      destinationRegion:
          Input.asOptionalInput<String>(map['destinationRegion']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      optionGroupName: Input.asOptionalInput<String>(map['optionGroupName']),
      presignedUrl: Input.asOptionalInput<String>(map['presignedUrl']),
      region: Input.asOptionalInput<String>(map['region']),
      sharedAccounts:
          Input.asOptionalInput<List<String>>(map['sharedAccounts']),
      sourceDbSnapshotIdentifier:
          Input.asInput<String>(map['sourceDbSnapshotIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetCustomAvailabilityZone:
          Input.asOptionalInput<String>(map['targetCustomAvailabilityZone']),
      targetDbSnapshotIdentifier:
          Input.asInput<String>(map['targetDbSnapshotIdentifier']),
    );
  }
}
