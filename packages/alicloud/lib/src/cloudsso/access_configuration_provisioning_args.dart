// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_access_configuration_provisioning_access_configuration_provisioning_args_doc}
/// The set of arguments for AccessConfigurationProvisioning.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_access_configuration_provisioning_access_configuration_provisioning_args_doc}
class AccessConfigurationProvisioningArgs {
  /// The Access configuration ID.
  final pulumi.Input<String> accessConfigurationId;
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// The status of the resource. Valid values: `Provisioned`, `ReprovisionRequired` and `DeprovisionFailed`.
  final pulumi.Input<String>? status;
  /// The ID of the target to create the resource range.
  final pulumi.Input<String> targetId;
  /// The type of the resource range target to be accessed. Valid values: `RD-Account`.
  final pulumi.Input<String> targetType;

  /// Creates a new [AccessConfigurationProvisioningArgs].
  /// [accessConfigurationId] The Access configuration ID.
  /// [directoryId] The ID of the Directory.
  /// [status] The status of the resource. Valid values: `Provisioned`, `ReprovisionRequired` and `DeprovisionFailed`.
  /// [targetId] The ID of the target to create the resource range.
  /// [targetType] The type of the resource range target to be accessed. Valid values: `RD-Account`.
  AccessConfigurationProvisioningArgs({
    required String accessConfigurationId,
    required String directoryId,
    String? status,
    required String targetId,
    required String targetType,
  }) :
      accessConfigurationId = pulumi.Input.asInput<String>(accessConfigurationId),
      directoryId = pulumi.Input.asInput<String>(directoryId),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetId = pulumi.Input.asInput<String>(targetId),
      targetType = pulumi.Input.asInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': accessConfigurationId,
      'directoryId': directoryId,
      'status': ?status,
      'targetId': targetId,
      'targetType': targetType,
    };
  }

  factory AccessConfigurationProvisioningArgs.fromMap(Map<String, dynamic> map) {
    return AccessConfigurationProvisioningArgs(
      accessConfigurationId: map['accessConfigurationId'] as String,
      directoryId: map['directoryId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      targetId: map['targetId'] as String,
      targetType: map['targetType'] as String,
    );
  }
}

