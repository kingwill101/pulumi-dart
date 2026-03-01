// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_configuration_permission_policy.dart';

/// {@template pulumi_cloudsso_access_configuration_access_configuration_args_doc}
/// The set of arguments for AccessConfiguration.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_access_configuration_access_configuration_args_doc}
class AccessConfigurationArgs {
  /// The name of the access configuration. The name can be up to `32` characters long and can contain letters, digits, and hyphens (-).
  final pulumi.Input<String> accessConfigurationName;
  /// The description of the access configuration. The description can be up to `1024` characters in length.
  final pulumi.Input<String>? description;
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// This parameter is used to force deletion `permission_policies`. Valid Value: `true`, `false`.
  ///
  /// * **NOTE:** The `permission_policies` will be removed automatically when the resource is deleted, please operate with caution. If there are left more permission policies in the access configuration, please remove them before deleting the access configuration.
  final pulumi.Input<bool>? forceRemovePermissionPolicies;
  /// The Policy List. See `permission_policies` below.
  final pulumi.Input<List<AccessConfigurationPermissionPolicy>>? permissionPolicies;
  /// The RelayState of the Access Configuration, Cloud SSO users use this access configuration to access the RD account, the initial access page address. Must be the Alibaba Cloud console page, the default is the console home page.
  final pulumi.Input<String>? relayState;
  /// The SessionDuration of the Access Configuration. Unit: Seconds. Valid values: `900` to `43200`.
  final pulumi.Input<int>? sessionDuration;

  /// Creates a new [AccessConfigurationArgs].
  /// [accessConfigurationName] The name of the access configuration. The name can be up to `32` characters long and can contain letters, digits, and hyphens (-).
  /// [description] The description of the access configuration. The description can be up to `1024` characters in length.
  /// [directoryId] The ID of the Directory.
  /// [forceRemovePermissionPolicies] This parameter is used to force deletion `permission_policies`. Valid Value: `true`, `false`.
  /// [permissionPolicies] The Policy List. See `permission_policies` below.
  /// [relayState] The RelayState of the Access Configuration, Cloud SSO users use this access configuration to access the RD account, the initial access page address. Must be the Alibaba Cloud console page, the default is the console home page.
  /// [sessionDuration] The SessionDuration of the Access Configuration. Unit: Seconds. Valid values: `900` to `43200`.
  AccessConfigurationArgs({
    required pulumi.Output<String> accessConfigurationName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> directoryId,
    pulumi.Output<bool>? forceRemovePermissionPolicies,
    pulumi.Output<List<AccessConfigurationPermissionPolicy>>? permissionPolicies,
    pulumi.Output<String>? relayState,
    pulumi.Output<int>? sessionDuration,
  }) :
      accessConfigurationName = pulumi.Input.asInput<String>(accessConfigurationName),
      description = pulumi.Input.asOptionalInput<String>(description),
      directoryId = pulumi.Input.asInput<String>(directoryId),
      forceRemovePermissionPolicies = pulumi.Input.asOptionalInput<bool>(forceRemovePermissionPolicies),
      permissionPolicies = pulumi.Input.asOptionalInput<List<AccessConfigurationPermissionPolicy>>(permissionPolicies),
      relayState = pulumi.Input.asOptionalInput<String>(relayState),
      sessionDuration = pulumi.Input.asOptionalInput<int>(sessionDuration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationName': accessConfigurationName,
      'description': ?description,
      'directoryId': directoryId,
      'forceRemovePermissionPolicies': ?forceRemovePermissionPolicies,
      'permissionPolicies': ?pulumi.Input.mapOptionalInputValue<List<AccessConfigurationPermissionPolicy>, List<Map<String, dynamic>>>(permissionPolicies, (value) => pulumi.Input.encodeList<AccessConfigurationPermissionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relayState': ?relayState,
      'sessionDuration': ?sessionDuration,
    };
  }

  factory AccessConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AccessConfigurationArgs(
      accessConfigurationName: pulumi.Output.create<String>(map['accessConfigurationName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      directoryId: pulumi.Output.create<String>(map['directoryId'] as String),
      forceRemovePermissionPolicies: map['forceRemovePermissionPolicies'] == null ? null : pulumi.Output.create<bool>(map['forceRemovePermissionPolicies'] as bool),
      permissionPolicies: map['permissionPolicies'] == null ? null : pulumi.Output.create<List<AccessConfigurationPermissionPolicy>>(pulumi.Input.decodeList<AccessConfigurationPermissionPolicy>(map['permissionPolicies'], (value) => AccessConfigurationPermissionPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      relayState: map['relayState'] == null ? null : pulumi.Output.create<String>(map['relayState'] as String),
      sessionDuration: map['sessionDuration'] == null ? null : pulumi.Output.create<int>(map['sessionDuration'] as int),
    );
  }
}

