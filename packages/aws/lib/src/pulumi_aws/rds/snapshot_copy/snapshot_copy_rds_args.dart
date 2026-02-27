// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SnapshotCopy.
class SnapshotCopyRdsArgs {
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

  SnapshotCopyRdsArgs({
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

  factory SnapshotCopyRdsArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyRdsArgs(
      copyTags: pulumi.Input.asOptionalInput<bool>(map['copyTags']),
      destinationRegion:
          pulumi.Input.asOptionalInput<String>(map['destinationRegion']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      optionGroupName:
          pulumi.Input.asOptionalInput<String>(map['optionGroupName']),
      presignedUrl: pulumi.Input.asOptionalInput<String>(map['presignedUrl']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sharedAccounts:
          pulumi.Input.asOptionalInput<List<String>>(map['sharedAccounts']),
      sourceDbSnapshotIdentifier:
          pulumi.Input.asInput<String>(map['sourceDbSnapshotIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetCustomAvailabilityZone: pulumi.Input.asOptionalInput<String>(
          map['targetCustomAvailabilityZone']),
      targetDbSnapshotIdentifier:
          pulumi.Input.asInput<String>(map['targetDbSnapshotIdentifier']),
    );
  }
}
