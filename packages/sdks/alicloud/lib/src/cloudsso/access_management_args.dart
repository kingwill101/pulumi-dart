// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_access_management_access_management_args_doc}
/// The set of arguments for AccessManagement.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_access_management_access_management_args_doc}
class AccessManagementArgs {
  /// The ID of the access configuration.
  final pulumi.Input<String> accessConfigurationId;
  /// Specifies whether to de-provision the access configuration when you remove the access permissions from the CloudSSO identity. Valid values: `DeprovisionForLastAccessAssignmentOnAccount` and `None`. Default Value: `DeprovisionForLastAccessAssignmentOnAccount`. **NOTE:** When `deprovision_strategy` is `DeprovisionForLastAccessAssignmentOnAccount`, and the access assignment to be deleted is the last access assignment for the same account and the same AC, this option is used for the undeployment operation.
  final pulumi.Input<String>? deprovisionStrategy;
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// The ID of the CloudSSO identity.
  final pulumi.Input<String> principalId;
  /// The type of the CloudSSO identity. Valid values: `User`, `Group`.
  final pulumi.Input<String> principalType;
  /// The ID of the task object.
  final pulumi.Input<String> targetId;
  /// The type of the task object. Valid values: `RD-Account`.
  final pulumi.Input<String> targetType;

  /// Creates a new [AccessManagementArgs].
  /// [accessConfigurationId] The ID of the access configuration.
  /// [deprovisionStrategy] Specifies whether to de-provision the access configuration when you remove the access permissions from the CloudSSO identity. Valid values: `DeprovisionForLastAccessAssignmentOnAccount` and `None`. Default Value: `DeprovisionForLastAccessAssignmentOnAccount`. **NOTE:** When `deprovision_strategy` is `DeprovisionForLastAccessAssignmentOnAccount`, and the access assignment to be deleted is the last access assignment for the same account and the same AC, this option is used for the undeployment operation.
  /// [directoryId] The ID of the Directory.
  /// [principalId] The ID of the CloudSSO identity.
  /// [principalType] The type of the CloudSSO identity. Valid values: `User`, `Group`.
  /// [targetId] The ID of the task object.
  /// [targetType] The type of the task object. Valid values: `RD-Account`.
  AccessManagementArgs({
    required this.accessConfigurationId,
    this.deprovisionStrategy,
    required this.directoryId,
    required this.principalId,
    required this.principalType,
    required this.targetId,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': accessConfigurationId,
      'deprovisionStrategy': ?deprovisionStrategy,
      'directoryId': directoryId,
      'principalId': principalId,
      'principalType': principalType,
      'targetId': targetId,
      'targetType': targetType,
    };
  }

  factory AccessManagementArgs.fromMap(Map<String, dynamic> map) {
    return AccessManagementArgs(
      accessConfigurationId: pulumi.Input.fromValue(map['accessConfigurationId'] as String),
      deprovisionStrategy: (() { final guardedValue = map['deprovisionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}

