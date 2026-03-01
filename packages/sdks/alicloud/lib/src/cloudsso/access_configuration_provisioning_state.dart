// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessConfigurationProvisioning resources.
class AccessConfigurationProvisioningState {
  /// The Access configuration ID.
  final pulumi.Input<String>? accessConfigurationId;
  /// The ID of the Directory.
  final pulumi.Input<String>? directoryId;
  /// The status of the resource. Valid values: `Provisioned`, `ReprovisionRequired` and `DeprovisionFailed`.
  final pulumi.Input<String>? status;
  /// The ID of the target to create the resource range.
  final pulumi.Input<String>? targetId;
  /// The type of the resource range target to be accessed. Valid values: `RD-Account`.
  final pulumi.Input<String>? targetType;

  /// Creates a new [AccessConfigurationProvisioningState].
  /// [accessConfigurationId] The Access configuration ID.
  /// [directoryId] The ID of the Directory.
  /// [status] The status of the resource. Valid values: `Provisioned`, `ReprovisionRequired` and `DeprovisionFailed`.
  /// [targetId] The ID of the target to create the resource range.
  /// [targetType] The type of the resource range target to be accessed. Valid values: `RD-Account`.
  AccessConfigurationProvisioningState({
    pulumi.Output<String>? accessConfigurationId,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? targetId,
    pulumi.Output<String>? targetType,
  }) :
      accessConfigurationId = pulumi.Input.asOptionalInput<String>(accessConfigurationId),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetId = pulumi.Input.asOptionalInput<String>(targetId),
      targetType = pulumi.Input.asOptionalInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': ?accessConfigurationId,
      'directoryId': ?directoryId,
      'status': ?status,
      'targetId': ?targetId,
      'targetType': ?targetType,
    };
  }

  factory AccessConfigurationProvisioningState.fromMap(Map<String, dynamic> map) {
    return AccessConfigurationProvisioningState(
      accessConfigurationId: map['accessConfigurationId'] == null ? null : pulumi.Output.create<String>(map['accessConfigurationId'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      targetId: map['targetId'] == null ? null : pulumi.Output.create<String>(map['targetId'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

