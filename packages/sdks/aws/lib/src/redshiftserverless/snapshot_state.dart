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
      accountsWithProvisionedRestoreAccesses: (() { final guardedValue = map['accountsWithProvisionedRestoreAccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      accountsWithRestoreAccesses: (() { final guardedValue = map['accountsWithRestoreAccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceArn: (() { final guardedValue = map['namespaceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccount: (() { final guardedValue = map['ownerAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

