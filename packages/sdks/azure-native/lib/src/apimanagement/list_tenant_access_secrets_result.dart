// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listTenantAccessSecrets.
class ListTenantAccessSecretsResult {
  /// Determines whether direct access is enabled.
  final bool? enabled;
  /// Access Information type ('access' or 'gitAccess')
  final String? id;
  /// Primary access key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final String? primaryKey;
  /// Principal (User) Identifier.
  final String? principalId;
  /// Secondary access key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final String? secondaryKey;

  /// Creates a new [ListTenantAccessSecretsResult].
  /// [enabled] Determines whether direct access is enabled.
  /// [id] Access Information type ('access' or 'gitAccess')
  /// [primaryKey] Primary access key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  /// [principalId] Principal (User) Identifier.
  /// [secondaryKey] Secondary access key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  ListTenantAccessSecretsResult({
    this.enabled,
    this.id,
    this.primaryKey,
    this.principalId,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'id': ?id,
      'primaryKey': ?primaryKey,
      'principalId': ?principalId,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListTenantAccessSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListTenantAccessSecretsResult(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
    );
  }
}

