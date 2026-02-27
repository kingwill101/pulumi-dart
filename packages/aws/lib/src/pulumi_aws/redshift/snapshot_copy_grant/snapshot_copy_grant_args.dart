// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SnapshotCopyGrant.
class SnapshotCopyGrantArgs {
  /// The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. If not specified, the default key is used.
  final pulumi.Input<String>? kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A friendly name for identifying the grant.
  final pulumi.Input<String> snapshotCopyGrantName;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  SnapshotCopyGrantArgs({
    this.kmsKeyId,
    this.region,
    required this.snapshotCopyGrantName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['snapshotCopyGrantName'] = snapshotCopyGrantName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SnapshotCopyGrantArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyGrantArgs(
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotCopyGrantName:
          pulumi.Input.asInput<String>(map['snapshotCopyGrantName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
