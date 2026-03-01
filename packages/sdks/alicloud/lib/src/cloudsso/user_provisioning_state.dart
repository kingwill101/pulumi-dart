// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_provisioning_user_provisioning_statistic.dart';

/// Input properties used for looking up and filtering UserProvisioning resources.
class UserProvisioningState {
  /// The creation time of the synchronization
  final pulumi.Input<String>? createTime;
  /// The processing policy for users who have been synchronized when deleting synchronization
  final pulumi.Input<String>? deletionStrategy;
  /// Description of User Synchronization
  final pulumi.Input<String>? description;
  /// The ID of the directory to which the synchronization belongs
  final pulumi.Input<String>? directoryId;
  /// Processing Policy for Synchronization Conflicts
  final pulumi.Input<String>? duplicationStrategy;
  /// The ID of the CloudSSO user/group associated with the synchronization.
  final pulumi.Input<String>? principalId;
  /// The ID of the CloudSSO user/group associated with the synchronization.
  final pulumi.Input<String>? principalType;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The ID of the destination associated with the synchronization.
  final pulumi.Input<String>? targetId;
  /// The target type associated with the synchronization
  final pulumi.Input<String>? targetType;
  /// The first ID of the resource
  final pulumi.Input<String>? userProvisioningId;
  /// User Provisioning statistics
  final pulumi.Input<List<UserProvisioningUserProvisioningStatistic>>? userProvisioningStatistics;

  /// Creates a new [UserProvisioningState].
  /// [createTime] The creation time of the synchronization
  /// [deletionStrategy] The processing policy for users who have been synchronized when deleting synchronization
  /// [description] Description of User Synchronization
  /// [directoryId] The ID of the directory to which the synchronization belongs
  /// [duplicationStrategy] Processing Policy for Synchronization Conflicts
  /// [principalId] The ID of the CloudSSO user/group associated with the synchronization.
  /// [principalType] The ID of the CloudSSO user/group associated with the synchronization.
  /// [status] The status of the resource
  /// [targetId] The ID of the destination associated with the synchronization.
  /// [targetType] The target type associated with the synchronization
  /// [userProvisioningId] The first ID of the resource
  /// [userProvisioningStatistics] User Provisioning statistics
  UserProvisioningState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deletionStrategy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? duplicationStrategy,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? targetId,
    pulumi.Output<String>? targetType,
    pulumi.Output<String>? userProvisioningId,
    pulumi.Output<List<UserProvisioningUserProvisioningStatistic>>? userProvisioningStatistics,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionStrategy = pulumi.Input.asOptionalInput<String>(deletionStrategy),
      description = pulumi.Input.asOptionalInput<String>(description),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      duplicationStrategy = pulumi.Input.asOptionalInput<String>(duplicationStrategy),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetId = pulumi.Input.asOptionalInput<String>(targetId),
      targetType = pulumi.Input.asOptionalInput<String>(targetType),
      userProvisioningId = pulumi.Input.asOptionalInput<String>(userProvisioningId),
      userProvisioningStatistics = pulumi.Input.asOptionalInput<List<UserProvisioningUserProvisioningStatistic>>(userProvisioningStatistics);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionStrategy': ?deletionStrategy,
      'description': ?description,
      'directoryId': ?directoryId,
      'duplicationStrategy': ?duplicationStrategy,
      'principalId': ?principalId,
      'principalType': ?principalType,
      'status': ?status,
      'targetId': ?targetId,
      'targetType': ?targetType,
      'userProvisioningId': ?userProvisioningId,
      'userProvisioningStatistics': ?pulumi.Input.mapOptionalInputValue<List<UserProvisioningUserProvisioningStatistic>, List<Map<String, dynamic>>>(userProvisioningStatistics, (value) => pulumi.Input.encodeList<UserProvisioningUserProvisioningStatistic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserProvisioningState.fromMap(Map<String, dynamic> map) {
    return UserProvisioningState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionStrategy: map['deletionStrategy'] == null ? null : pulumi.Output.create<String>(map['deletionStrategy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      duplicationStrategy: map['duplicationStrategy'] == null ? null : pulumi.Output.create<String>(map['duplicationStrategy'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      targetId: map['targetId'] == null ? null : pulumi.Output.create<String>(map['targetId'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
      userProvisioningId: map['userProvisioningId'] == null ? null : pulumi.Output.create<String>(map['userProvisioningId'] as String),
      userProvisioningStatistics: map['userProvisioningStatistics'] == null ? null : pulumi.Output.create<List<UserProvisioningUserProvisioningStatistic>>(pulumi.Input.decodeList<UserProvisioningUserProvisioningStatistic>(map['userProvisioningStatistics'], (value) => UserProvisioningUserProvisioningStatistic.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

