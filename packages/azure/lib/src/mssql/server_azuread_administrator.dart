// ignore_for_file: unused_element, unnecessary_cast


class ServerAzureadAdministrator {
  /// Specifies whether only AD Users and administrators (e.g. `azuread_administrator[0].login_username`) can be used to login, or also local database users (e.g. `administrator_login`). When `true`, the `administrator_login` and `administrator_login_password` properties can be omitted.
  final bool? azureadAuthenticationOnly;
  /// The login username of the Azure AD Administrator of this SQL Server.
  final String loginUsername;
  /// The object id of the Azure AD Administrator of this SQL Server.
  final String objectId;
  /// The tenant id of the Azure AD Administrator of this SQL Server.
  final String? tenantId;

  /// Creates a new [ServerAzureadAdministrator].
  /// [azureadAuthenticationOnly] Specifies whether only AD Users and administrators (e.g. `azuread_administrator[0].login_username`) can be used to login, or also local database users (e.g. `administrator_login`). When `true`, the `administrator_login` and `administrator_login_password` properties can be omitted.
  /// [loginUsername] The login username of the Azure AD Administrator of this SQL Server.
  /// [objectId] The object id of the Azure AD Administrator of this SQL Server.
  /// [tenantId] The tenant id of the Azure AD Administrator of this SQL Server.
  ServerAzureadAdministrator({
    this.azureadAuthenticationOnly,
    required this.loginUsername,
    required this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadAuthenticationOnly': ?azureadAuthenticationOnly,
      'loginUsername': loginUsername,
      'objectId': objectId,
      'tenantId': ?tenantId,
    };
  }

  factory ServerAzureadAdministrator.fromMap(Map<String, dynamic> map) {
    return ServerAzureadAdministrator(
      azureadAuthenticationOnly: map['azureadAuthenticationOnly'] == null ? null : map['azureadAuthenticationOnly'] as bool,
      loginUsername: map['loginUsername'] as String,
      objectId: map['objectId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

