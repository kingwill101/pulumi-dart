// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessManagement resources.
class AccessManagementState {
  /// The ID of the access configuration.
  final pulumi.Input<String>? accessConfigurationId;
  /// (Available since v1.254.0) The time when the access permissions were assigned.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to de-provision the access configuration when you remove the access permissions from the CloudSSO identity. Valid values: `DeprovisionForLastAccessAssignmentOnAccount` and `None`. Default Value: `DeprovisionForLastAccessAssignmentOnAccount`. **NOTE:** When `deprovision_strategy` is `DeprovisionForLastAccessAssignmentOnAccount`, and the access assignment to be deleted is the last access assignment for the same account and the same AC, this option is used for the undeployment operation.
  final pulumi.Input<String>? deprovisionStrategy;
  /// The ID of the Directory.
  final pulumi.Input<String>? directoryId;
  /// The ID of the CloudSSO identity.
  final pulumi.Input<String>? principalId;
  /// The type of the CloudSSO identity. Valid values: `User`, `Group`.
  final pulumi.Input<String>? principalType;
  /// The ID of the task object.
  final pulumi.Input<String>? targetId;
  /// The type of the task object. Valid values: `RD-Account`.
  final pulumi.Input<String>? targetType;

  /// Creates a new [AccessManagementState].
  /// [accessConfigurationId] The ID of the access configuration.
  /// [createTime] (Available since v1.254.0) The time when the access permissions were assigned.
  /// [deprovisionStrategy] Specifies whether to de-provision the access configuration when you remove the access permissions from the CloudSSO identity. Valid values: `DeprovisionForLastAccessAssignmentOnAccount` and `None`. Default Value: `DeprovisionForLastAccessAssignmentOnAccount`. **NOTE:** When `deprovision_strategy` is `DeprovisionForLastAccessAssignmentOnAccount`, and the access assignment to be deleted is the last access assignment for the same account and the same AC, this option is used for the undeployment operation.
  /// [directoryId] The ID of the Directory.
  /// [principalId] The ID of the CloudSSO identity.
  /// [principalType] The type of the CloudSSO identity. Valid values: `User`, `Group`.
  /// [targetId] The ID of the task object.
  /// [targetType] The type of the task object. Valid values: `RD-Account`.
  AccessManagementState({
    this.accessConfigurationId,
    this.createTime,
    this.deprovisionStrategy,
    this.directoryId,
    this.principalId,
    this.principalType,
    this.targetId,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': ?accessConfigurationId,
      'createTime': ?createTime,
      'deprovisionStrategy': ?deprovisionStrategy,
      'directoryId': ?directoryId,
      'principalId': ?principalId,
      'principalType': ?principalType,
      'targetId': ?targetId,
      'targetType': ?targetType,
    };
  }

  factory AccessManagementState.fromMap(Map<String, dynamic> map) {
    return AccessManagementState(
      accessConfigurationId: map['accessConfigurationId'] == null ? null : (map['accessConfigurationId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deprovisionStrategy: map['deprovisionStrategy'] == null ? null : (map['deprovisionStrategy'] as String).input(),
      directoryId: map['directoryId'] == null ? null : (map['directoryId'] as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType'] as String).input(),
      targetId: map['targetId'] == null ? null : (map['targetId'] as String).input(),
      targetType: map['targetType'] == null ? null : (map['targetType'] as String).input(),
    );
  }
}

