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
    pulumi.Output<String>? accessConfigurationId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deprovisionStrategy,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? targetId,
    pulumi.Output<String>? targetType,
  }) :
      accessConfigurationId = pulumi.Input.asOptionalInput<String>(accessConfigurationId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deprovisionStrategy = pulumi.Input.asOptionalInput<String>(deprovisionStrategy),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      targetId = pulumi.Input.asOptionalInput<String>(targetId),
      targetType = pulumi.Input.asOptionalInput<String>(targetType);

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
      accessConfigurationId: map['accessConfigurationId'] == null ? null : pulumi.Output.create<String>(map['accessConfigurationId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deprovisionStrategy: map['deprovisionStrategy'] == null ? null : pulumi.Output.create<String>(map['deprovisionStrategy'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      targetId: map['targetId'] == null ? null : pulumi.Output.create<String>(map['targetId'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

