// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines how resources deployed by a blueprint assignment are locked.
class AssignmentLockSettingsResponse {
  /// List of management operations that are excluded from blueprint locks. Up to 200 actions are permitted. If the lock mode is set to 'AllResourcesReadOnly', then the following actions are automatically appended to 'excludedActions': '*/read', 'Microsoft.Network/virtualNetworks/subnets/join/action' and 'Microsoft.Authorization/locks/delete'. If the lock mode is set to 'AllResourcesDoNotDelete', then the following actions are automatically appended to 'excludedActions': 'Microsoft.Authorization/locks/delete'. Duplicate actions will get removed.
  final pulumi.Input<List<String>>? excludedActions;
  /// List of AAD principals excluded from blueprint locks. Up to 5 principals are permitted.
  final pulumi.Input<List<String>>? excludedPrincipals;
  /// Lock mode.
  final pulumi.Input<String>? mode;

  /// Creates a new [AssignmentLockSettingsResponse].
  /// [excludedActions] List of management operations that are excluded from blueprint locks. Up to 200 actions are permitted. If the lock mode is set to 'AllResourcesReadOnly', then the following actions are automatically appended to 'excludedActions': '*/read', 'Microsoft.Network/virtualNetworks/subnets/join/action' and 'Microsoft.Authorization/locks/delete'. If the lock mode is set to 'AllResourcesDoNotDelete', then the following actions are automatically appended to 'excludedActions': 'Microsoft.Authorization/locks/delete'. Duplicate actions will get removed.
  /// [excludedPrincipals] List of AAD principals excluded from blueprint locks. Up to 5 principals are permitted.
  /// [mode] Lock mode.
  AssignmentLockSettingsResponse({
    this.excludedActions,
    this.excludedPrincipals,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedActions': ?excludedActions,
      'excludedPrincipals': ?excludedPrincipals,
      'mode': ?mode,
    };
  }

  factory AssignmentLockSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentLockSettingsResponse(
      excludedActions: (() { final guardedValue = map['excludedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludedPrincipals: (() { final guardedValue = map['excludedPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

