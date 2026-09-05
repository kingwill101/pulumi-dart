// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterSnapshot resources.
class ClusterSnapshotState {
  /// ARN of the snapshot.
  final pulumi.Input<String?>? arn;
  /// The cluster identifier for which you want a snapshot.
  final pulumi.Input<String?>? clusterIdentifier;
  /// KMS key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.
  final pulumi.Input<String?>? kmsKeyId;
  /// The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between `1` and `3653`.
  final pulumi.Input<int?>? manualSnapshotRetentionPeriod;
  /// For manual snapshots, the Amazon Web Services account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.
  final pulumi.Input<String?>? ownerAccount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  final pulumi.Input<String?>? snapshotIdentifier;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ClusterSnapshotState].
  /// [arn] ARN of the snapshot.
  /// [clusterIdentifier] The cluster identifier for which you want a snapshot.
  /// [kmsKeyId] KMS key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.
  /// [manualSnapshotRetentionPeriod] The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between `1` and `3653`.
  /// [ownerAccount] For manual snapshots, the Amazon Web Services account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotIdentifier] A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ClusterSnapshotState({
    this.arn,
    this.clusterIdentifier,
    this.kmsKeyId,
    this.manualSnapshotRetentionPeriod,
    this.ownerAccount,
    this.region,
    this.snapshotIdentifier,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualSnapshotRetentionPeriod: (() { final guardedValue = map['manualSnapshotRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ownerAccount: (() { final guardedValue = map['ownerAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotIdentifier: (() { final guardedValue = map['snapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
