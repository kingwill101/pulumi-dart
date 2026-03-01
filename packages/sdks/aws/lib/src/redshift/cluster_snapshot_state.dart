// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterSnapshot resources.
class ClusterSnapshotState {
  /// Amazon Resource Name (ARN) of the snapshot.
  final pulumi.Input<String>? arn;
  /// The cluster identifier for which you want a snapshot.
  final pulumi.Input<String>? clusterIdentifier;
  /// The Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.
  final pulumi.Input<String>? kmsKeyId;
  /// The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between `1` and `3653`.
  final pulumi.Input<int>? manualSnapshotRetentionPeriod;
  /// For manual snapshots, the Amazon Web Services account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.
  final pulumi.Input<String>? ownerAccount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  final pulumi.Input<String>? snapshotIdentifier;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ClusterSnapshotState].
  /// [arn] Amazon Resource Name (ARN) of the snapshot.
  /// [clusterIdentifier] The cluster identifier for which you want a snapshot.
  /// [kmsKeyId] The Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.
  /// [manualSnapshotRetentionPeriod] The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between `1` and `3653`.
  /// [ownerAccount] For manual snapshots, the Amazon Web Services account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotIdentifier] A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ClusterSnapshotState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<int>? manualSnapshotRetentionPeriod,
    pulumi.Output<String>? ownerAccount,
    pulumi.Output<String>? region,
    pulumi.Output<String>? snapshotIdentifier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      manualSnapshotRetentionPeriod = pulumi.Input.asOptionalInput<int>(manualSnapshotRetentionPeriod),
      ownerAccount = pulumi.Input.asOptionalInput<String>(ownerAccount),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotIdentifier = pulumi.Input.asOptionalInput<String>(snapshotIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterIdentifier': ?clusterIdentifier,
      'kmsKeyId': ?kmsKeyId,
      'manualSnapshotRetentionPeriod': ?manualSnapshotRetentionPeriod,
      'ownerAccount': ?ownerAccount,
      'region': ?region,
      'snapshotIdentifier': ?snapshotIdentifier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ClusterSnapshotState.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      manualSnapshotRetentionPeriod: map['manualSnapshotRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['manualSnapshotRetentionPeriod'] as int),
      ownerAccount: map['ownerAccount'] == null ? null : pulumi.Output.create<String>(map['ownerAccount'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshotIdentifier: map['snapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['snapshotIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

