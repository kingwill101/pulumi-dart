// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Role definition permissions.
class PermissionResponse {
  /// Allowed actions.
  final pulumi.Input<List<String>>? actions;

  /// The conditions on the role definition. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  final pulumi.Input<String> condition;

  /// Version of the condition. Currently the only accepted value is '2.0'
  final pulumi.Input<String> conditionVersion;

  /// Allowed Data actions.
  final pulumi.Input<List<String>>? dataActions;

  /// Denied actions.
  final pulumi.Input<List<String>>? notActions;

  /// Denied Data actions.
  final pulumi.Input<List<String>>? notDataActions;

  /// Creates a new [PermissionResponse].
  /// [actions] Allowed actions.
  /// [condition] The conditions on the role definition. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  /// [conditionVersion] Version of the condition. Currently the only accepted value is '2.0'
  /// [dataActions] Allowed Data actions.
  /// [notActions] Denied actions.
  /// [notDataActions] Denied Data actions.
  PermissionResponse({
    this.actions,
    required this.condition,
    required this.conditionVersion,
    this.dataActions,
    this.notActions,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'condition': condition,
      'conditionVersion': conditionVersion,
      'dataActions': ?dataActions,
      'notActions': ?notActions,
      'notDataActions': ?notDataActions,
    };
  }

  factory PermissionResponse.fromMap(Map<String, dynamic> map) {
    return PermissionResponse(
      actions: (() {
        final guardedValue = map['actions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      condition: pulumi.Input.fromValue(map['condition'] as String),
      conditionVersion: pulumi.Input.fromValue(
        map['conditionVersion'] as String,
      ),
      dataActions: (() {
        final guardedValue = map['dataActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      notActions: (() {
        final guardedValue = map['notActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      notDataActions: (() {
        final guardedValue = map['notDataActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
