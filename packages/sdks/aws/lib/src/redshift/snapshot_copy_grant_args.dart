// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_snapshot_copy_grant_snapshot_copy_grant_args_doc}
/// The set of arguments for SnapshotCopyGrant.
/// {@endtemplate}
/// {@macro pulumi_redshift_snapshot_copy_grant_snapshot_copy_grant_args_doc}
class SnapshotCopyGrantArgs {
  /// Unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the ARN of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. If not specified, the default key is used.
  final pulumi.Input<String?>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A friendly name for identifying the grant.
  final pulumi.Input<String> snapshotCopyGrantName;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SnapshotCopyGrantArgs].
  /// [kmsKeyId] Unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the ARN of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. If not specified, the default key is used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotCopyGrantName] A friendly name for identifying the grant.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const SnapshotCopyGrantArgs({
    this.kmsKeyId,
    this.region,
    required this.snapshotCopyGrantName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'snapshotCopyGrantName': snapshotCopyGrantName,
      'tags': ?tags,
    };
  }

  factory SnapshotCopyGrantArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyGrantArgs(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotCopyGrantName: pulumi.Input.fromValue(map['snapshotCopyGrantName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
