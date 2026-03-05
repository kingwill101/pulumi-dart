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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionStrategy: (() { final guardedValue = map['deletionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duplicationStrategy: (() { final guardedValue = map['duplicationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userProvisioningId: (() { final guardedValue = map['userProvisioningId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userProvisioningStatistics: (() { final guardedValue = map['userProvisioningStatistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProvisioningUserProvisioningStatistic>(guardedValue, (value) => UserProvisioningUserProvisioningStatistic.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

