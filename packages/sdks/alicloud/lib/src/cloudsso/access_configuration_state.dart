// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_configuration_permission_policy.dart';

/// Input properties used for looking up and filtering AccessConfiguration resources.
class AccessConfigurationState {
  /// The ID of the Access Configuration.
  final pulumi.Input<String>? accessConfigurationId;
  /// The name of the access configuration. The name can be up to `32` characters long and can contain letters, digits, and hyphens (-).
  final pulumi.Input<String>? accessConfigurationName;
  /// The description of the access configuration. The description can be up to `1024` characters in length.
  final pulumi.Input<String>? description;
  /// The ID of the Directory.
  final pulumi.Input<String>? directoryId;
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

  /// Creates a new [AccessConfigurationState].
  /// [accessConfigurationId] The ID of the Access Configuration.
  /// [accessConfigurationName] The name of the access configuration. The name can be up to `32` characters long and can contain letters, digits, and hyphens (-).
  /// [description] The description of the access configuration. The description can be up to `1024` characters in length.
  /// [directoryId] The ID of the Directory.
  /// [forceRemovePermissionPolicies] This parameter is used to force deletion `permission_policies`. Valid Value: `true`, `false`.
  /// [permissionPolicies] The Policy List. See `permission_policies` below.
  /// [relayState] The RelayState of the Access Configuration, Cloud SSO users use this access configuration to access the RD account, the initial access page address. Must be the Alibaba Cloud console page, the default is the console home page.
  /// [sessionDuration] The SessionDuration of the Access Configuration. Unit: Seconds. Valid values: `900` to `43200`.
  AccessConfigurationState({
    this.accessConfigurationId,
    this.accessConfigurationName,
    this.description,
    this.directoryId,
    this.forceRemovePermissionPolicies,
    this.permissionPolicies,
    this.relayState,
    this.sessionDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': ?accessConfigurationId,
      'accessConfigurationName': ?accessConfigurationName,
      'description': ?description,
      'directoryId': ?directoryId,
      'forceRemovePermissionPolicies': ?forceRemovePermissionPolicies,
      'permissionPolicies': ?pulumi.Input.mapOptionalInputValue<List<AccessConfigurationPermissionPolicy>, List<Map<String, dynamic>>>(permissionPolicies, (value) => pulumi.Input.encodeList<AccessConfigurationPermissionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relayState': ?relayState,
      'sessionDuration': ?sessionDuration,
    };
  }

  factory AccessConfigurationState.fromMap(Map<String, dynamic> map) {
    return AccessConfigurationState(
      accessConfigurationId: map['accessConfigurationId'] == null ? null : (map['accessConfigurationId'] as String).input(),
      accessConfigurationName: map['accessConfigurationName'] == null ? null : (map['accessConfigurationName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      directoryId: map['directoryId'] == null ? null : (map['directoryId'] as String).input(),
      forceRemovePermissionPolicies: map['forceRemovePermissionPolicies'] == null ? null : (map['forceRemovePermissionPolicies'] as bool).input(),
      permissionPolicies: map['permissionPolicies'] == null ? null : (pulumi.Input.decodeList<AccessConfigurationPermissionPolicy>(map['permissionPolicies'], (value) => AccessConfigurationPermissionPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      relayState: map['relayState'] == null ? null : (map['relayState'] as String).input(),
      sessionDuration: map['sessionDuration'] == null ? null : (map['sessionDuration'] as int).input(),
    );
  }
}

