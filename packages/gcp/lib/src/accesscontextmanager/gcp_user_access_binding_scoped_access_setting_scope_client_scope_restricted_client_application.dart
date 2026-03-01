// ignore_for_file: unused_element, unnecessary_cast


class GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication {
  /// The OAuth client ID of the application.
  final String? clientId;
  /// The name of the application. Example: "Cloud Console"
  final String? name;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication].
  /// [clientId] The OAuth client ID of the application.
  /// [name] The name of the application. Example: "Cloud Console"
  GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication({
    this.clientId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'name': ?name,
    };
  }

  factory GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

