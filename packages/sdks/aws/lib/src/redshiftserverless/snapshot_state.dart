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
    pulumi.Output<List<String>>? accountsWithProvisionedRestoreAccesses,
    pulumi.Output<List<String>>? accountsWithRestoreAccesses,
    pulumi.Output<String>? adminUsername,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? namespaceArn,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? ownerAccount,
    pulumi.Output<String>? region,
    pulumi.Output<int>? retentionPeriod,
    pulumi.Output<String>? snapshotName,
  }) :
      accountsWithProvisionedRestoreAccesses = pulumi.Input.asOptionalInput<List<String>>(accountsWithProvisionedRestoreAccesses),
      accountsWithRestoreAccesses = pulumi.Input.asOptionalInput<List<String>>(accountsWithRestoreAccesses),
      adminUsername = pulumi.Input.asOptionalInput<String>(adminUsername),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      namespaceArn = pulumi.Input.asOptionalInput<String>(namespaceArn),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      ownerAccount = pulumi.Input.asOptionalInput<String>(ownerAccount),
      region = pulumi.Input.asOptionalInput<String>(region),
      retentionPeriod = pulumi.Input.asOptionalInput<int>(retentionPeriod),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName);

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
      accountsWithProvisionedRestoreAccesses: map['accountsWithProvisionedRestoreAccesses'] == null ? null : pulumi.Output.create<List<String>>((map['accountsWithProvisionedRestoreAccesses'] as List).cast<String>()),
      accountsWithRestoreAccesses: map['accountsWithRestoreAccesses'] == null ? null : pulumi.Output.create<List<String>>((map['accountsWithRestoreAccesses'] as List).cast<String>()),
      adminUsername: map['adminUsername'] == null ? null : pulumi.Output.create<String>(map['adminUsername'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      namespaceArn: map['namespaceArn'] == null ? null : pulumi.Output.create<String>(map['namespaceArn'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      ownerAccount: map['ownerAccount'] == null ? null : pulumi.Output.create<String>(map['ownerAccount'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retentionPeriod: map['retentionPeriod'] == null ? null : pulumi.Output.create<int>(map['retentionPeriod'] as int),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
    );
  }
}

