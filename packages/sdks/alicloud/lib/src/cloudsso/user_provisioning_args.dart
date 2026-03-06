// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_user_provisioning_user_provisioning_args_doc}
/// The set of arguments for UserProvisioning.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_user_provisioning_user_provisioning_args_doc}
class UserProvisioningArgs {
  /// The processing policy for users who have been synchronized when deleting synchronization
  final pulumi.Input<String> deletionStrategy;
  /// Description of User Synchronization
  final pulumi.Input<String>? description;
  /// The ID of the directory to which the synchronization belongs
  final pulumi.Input<String> directoryId;
  /// Processing Policy for Synchronization Conflicts
  final pulumi.Input<String> duplicationStrategy;
  /// The ID of the CloudSSO user/group associated with the synchronization.
  final pulumi.Input<String> principalId;
  /// The ID of the CloudSSO user/group associated with the synchronization.
  final pulumi.Input<String> principalType;
  /// The ID of the destination associated with the synchronization.
  final pulumi.Input<String> targetId;
  /// The target type associated with the synchronization
  final pulumi.Input<String> targetType;

  /// Creates a new [UserProvisioningArgs].
  /// [deletionStrategy] The processing policy for users who have been synchronized when deleting synchronization
  /// [description] Description of User Synchronization
  /// [directoryId] The ID of the directory to which the synchronization belongs
  /// [duplicationStrategy] Processing Policy for Synchronization Conflicts
  /// [principalId] The ID of the CloudSSO user/group associated with the synchronization.
  /// [principalType] The ID of the CloudSSO user/group associated with the synchronization.
  /// [targetId] The ID of the destination associated with the synchronization.
  /// [targetType] The target type associated with the synchronization
  const UserProvisioningArgs({
    required this.deletionStrategy,
    this.description,
    required this.directoryId,
    required this.duplicationStrategy,
    required this.principalId,
    required this.principalType,
    required this.targetId,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionStrategy': deletionStrategy,
      'description': ?description,
      'directoryId': directoryId,
      'duplicationStrategy': duplicationStrategy,
      'principalId': principalId,
      'principalType': principalType,
      'targetId': targetId,
      'targetType': targetType,
    };
  }

  factory UserProvisioningArgs.fromMap(Map<String, dynamic> map) {
    return UserProvisioningArgs(
      deletionStrategy: pulumi.Input.fromValue(map['deletionStrategy'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      duplicationStrategy: pulumi.Input.fromValue(map['duplicationStrategy'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}

