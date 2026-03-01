// ignore_for_file: unused_element, unnecessary_cast


/// Defines how resources deployed by a blueprint assignment are locked.
class AssignmentLockSettingsResponse {
  /// List of management operations that are excluded from blueprint locks. Up to 200 actions are permitted. If the lock mode is set to 'AllResourcesReadOnly', then the following actions are automatically appended to 'excludedActions': '*/read', 'Microsoft.Network/virtualNetworks/subnets/join/action' and 'Microsoft.Authorization/locks/delete'. If the lock mode is set to 'AllResourcesDoNotDelete', then the following actions are automatically appended to 'excludedActions': 'Microsoft.Authorization/locks/delete'. Duplicate actions will get removed.
  final List<String>? excludedActions;
  /// List of AAD principals excluded from blueprint locks. Up to 5 principals are permitted.
  final List<String>? excludedPrincipals;
  /// Lock mode.
  final String? mode;

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
      excludedActions: map['excludedActions'] == null ? null : (map['excludedActions'] as List).cast<String>(),
      excludedPrincipals: map['excludedPrincipals'] == null ? null : (map['excludedPrincipals'] as List).cast<String>(),
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

