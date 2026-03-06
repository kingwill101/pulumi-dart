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
  const AccessConfigurationProvisioningState({
    this.accessConfigurationId,
    this.directoryId,
    this.status,
    this.targetId,
    this.targetType,
  });

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
      accessConfigurationId: (() { final guardedValue = map['accessConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

