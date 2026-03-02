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
    this.createTime,
    this.deletionStrategy,
    this.description,
    this.directoryId,
    this.duplicationStrategy,
    this.principalId,
    this.principalType,
    this.status,
    this.targetId,
    this.targetType,
    this.userProvisioningId,
    this.userProvisioningStatistics,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deletionStrategy: map['deletionStrategy'] == null ? null : (map['deletionStrategy']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      directoryId: map['directoryId'] == null ? null : (map['directoryId']! as String).input(),
      duplicationStrategy: map['duplicationStrategy'] == null ? null : (map['duplicationStrategy']! as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      targetId: map['targetId'] == null ? null : (map['targetId']! as String).input(),
      targetType: map['targetType'] == null ? null : (map['targetType']! as String).input(),
      userProvisioningId: map['userProvisioningId'] == null ? null : (map['userProvisioningId']! as String).input(),
      userProvisioningStatistics: map['userProvisioningStatistics'] == null ? null : (pulumi.Input.decodeList<UserProvisioningUserProvisioningStatistic>(map['userProvisioningStatistics']!, (value) => UserProvisioningUserProvisioningStatistic.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

