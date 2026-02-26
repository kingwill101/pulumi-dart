// ignore_for_file: unused_element, unnecessary_cast

class GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication {
  /// The OAuth client ID of the application.
  final String? clientId;

  /// The name of the application. Example: "Cloud Console"
  final String? name;

  GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication({
    this.clientId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication.fromMap(
      Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
