// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnapshotCopyGrant resources.
class SnapshotCopyGrantState {
  /// Amazon Resource Name (ARN) of snapshot copy grant
  final pulumi.Input<String>? arn;
  /// The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. If not specified, the default key is used.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A friendly name for identifying the grant.
  final pulumi.Input<String>? snapshotCopyGrantName;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SnapshotCopyGrantState].
  /// [arn] Amazon Resource Name (ARN) of snapshot copy grant
  /// [kmsKeyId] The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. If not specified, the default key is used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotCopyGrantName] A friendly name for identifying the grant.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SnapshotCopyGrantState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? snapshotCopyGrantName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotCopyGrantName = pulumi.Input.asOptionalInput<String>(snapshotCopyGrantName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'snapshotCopyGrantName': ?snapshotCopyGrantName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SnapshotCopyGrantState.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyGrantState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshotCopyGrantName: map['snapshotCopyGrantName'] == null ? null : pulumi.Output.create<String>(map['snapshotCopyGrantName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

