// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// All of the Amazon Web Services accounts that have access to restore a snapshot to a provisioned cluster.
  final pulumi.Input<List<String>>? accountsWithProvisionedRestoreAccesses;
  /// All of the Amazon Web Services accounts that have access to restore a snapshot to a namespace.
  final pulumi.Input<List<String>>? accountsWithRestoreAccesses;
  /// The username of the database within a snapshot.
  final pulumi.Input<String>? adminUsername;
  /// The Amazon Resource Name (ARN) of the snapshot.
  final pulumi.Input<String>? arn;
  /// The unique identifier of the KMS key used to encrypt the snapshot.
  final pulumi.Input<String>? kmsKeyId;
  /// The Amazon Resource Name (ARN) of the namespace the snapshot was created from.
  final pulumi.Input<String>? namespaceArn;
  /// The namespace to create a snapshot for.
  final pulumi.Input<String>? namespaceName;
  /// The owner Amazon Web Services; account of the snapshot.
  final pulumi.Input<String>? ownerAccount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// How long to retain the created snapshot. Default value is `-1`.
  final pulumi.Input<int>? retentionPeriod;
  /// The name of the snapshot.
  final pulumi.Input<String>? snapshotName;

  /// Creates a new [SnapshotState].
  /// [accountsWithProvisionedRestoreAccesses] All of the Amazon Web Services accounts that have access to restore a snapshot to a provisioned cluster.
  /// [accountsWithRestoreAccesses] All of the Amazon Web Services accounts that have access to restore a snapshot to a namespace.
  /// [adminUsername] The username of the database within a snapshot.
  /// [arn] The Amazon Resource Name (ARN) of the snapshot.
  /// [kmsKeyId] The unique identifier of the KMS key used to encrypt the snapshot.
  /// [namespaceArn] The Amazon Resource Name (ARN) of the namespace the snapshot was created from.
  /// [namespaceName] The namespace to create a snapshot for.
  /// [ownerAccount] The owner Amazon Web Services; account of the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriod] How long to retain the created snapshot. Default value is `-1`.
  /// [snapshotName] The name of the snapshot.
  SnapshotState({
    this.accountsWithProvisionedRestoreAccesses,
    this.accountsWithRestoreAccesses,
    this.adminUsername,
    this.arn,
    this.kmsKeyId,
    this.namespaceArn,
    this.namespaceName,
    this.ownerAccount,
    this.region,
    this.retentionPeriod,
    this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountsWithProvisionedRestoreAccesses': ?accountsWithProvisionedRestoreAccesses,
      'accountsWithRestoreAccesses': ?accountsWithRestoreAccesses,
      'adminUsername': ?adminUsername,
      'arn': ?arn,
      'kmsKeyId': ?kmsKeyId,
      'namespaceArn': ?namespaceArn,
      'namespaceName': ?namespaceName,
      'ownerAccount': ?ownerAccount,
      'region': ?region,
      'retentionPeriod': ?retentionPeriod,
      'snapshotName': ?snapshotName,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      accountsWithProvisionedRestoreAccesses: map['accountsWithProvisionedRestoreAccesses'] == null ? null : (((map['accountsWithProvisionedRestoreAccesses'] as List).cast<String>()).input()).input(),
      accountsWithRestoreAccesses: map['accountsWithRestoreAccesses'] == null ? null : (((map['accountsWithRestoreAccesses'] as List).cast<String>()).input()).input(),
      adminUsername: map['adminUsername'] == null ? null : ((map['adminUsername'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      namespaceArn: map['namespaceArn'] == null ? null : ((map['namespaceArn'] as String).input()).input(),
      namespaceName: map['namespaceName'] == null ? null : ((map['namespaceName'] as String).input()).input(),
      ownerAccount: map['ownerAccount'] == null ? null : ((map['ownerAccount'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : ((map['retentionPeriod'] as int).input()).input(),
      snapshotName: map['snapshotName'] == null ? null : ((map['snapshotName'] as String).input()).input(),
    );
  }
}

