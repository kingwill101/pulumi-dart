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
  UserProvisioningArgs({
    required String deletionStrategy,
    String? description,
    required String directoryId,
    required String duplicationStrategy,
    required String principalId,
    required String principalType,
    required String targetId,
    required String targetType,
  }) :
      deletionStrategy = pulumi.Input.asInput<String>(deletionStrategy),
      description = pulumi.Input.asOptionalInput<String>(description),
      directoryId = pulumi.Input.asInput<String>(directoryId),
      duplicationStrategy = pulumi.Input.asInput<String>(duplicationStrategy),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asInput<String>(principalType),
      targetId = pulumi.Input.asInput<String>(targetId),
      targetType = pulumi.Input.asInput<String>(targetType);

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
      deletionStrategy: map['deletionStrategy'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      directoryId: map['directoryId'] as String,
      duplicationStrategy: map['duplicationStrategy'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
      targetId: map['targetId'] as String,
      targetType: map['targetType'] as String,
    );
  }
}

