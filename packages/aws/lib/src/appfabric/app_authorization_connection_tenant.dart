// ignore_for_file: unused_element, unnecessary_cast

class AppAuthorizationConnectionTenant {
  final String tenantDisplayName;
  final String tenantIdentifier;

  /// Creates a new [AppAuthorizationConnectionTenant].
  /// [tenantDisplayName] Required.
  /// [tenantIdentifier] Required.
  AppAuthorizationConnectionTenant({
    required this.tenantDisplayName,
    required this.tenantIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tenantDisplayName'] = tenantDisplayName;
    map['tenantIdentifier'] = tenantIdentifier;
    return map;
  }

  factory AppAuthorizationConnectionTenant.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationConnectionTenant(
      tenantDisplayName: map['tenantDisplayName'] as String,
      tenantIdentifier: map['tenantIdentifier'] as String,
    );
  }
}
