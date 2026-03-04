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
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      primaryKey: (() {
        final guardedValue = map['primaryKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      secondaryKey: (() {
        final guardedValue = map['secondaryKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
