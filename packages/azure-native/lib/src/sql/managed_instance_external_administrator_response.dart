// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a active directory administrator.
class ManagedInstanceExternalAdministratorResponse {
  /// Type of the sever administrator.
  final String? administratorType;
  /// Azure Active Directory only Authentication enabled.
  final bool? azureADOnlyAuthentication;
  /// Login name of the server administrator.
  final String? login;
  /// Principal Type of the sever administrator.
  final String? principalType;
  /// SID (object ID) of the server administrator.
  final String? sid;
  /// Tenant ID of the administrator.
  final String? tenantId;

  /// Creates a new [ManagedInstanceExternalAdministratorResponse].
  /// [administratorType] Type of the sever administrator.
  /// [azureADOnlyAuthentication] Azure Active Directory only Authentication enabled.
  /// [login] Login name of the server administrator.
  /// [principalType] Principal Type of the sever administrator.
  /// [sid] SID (object ID) of the server administrator.
  /// [tenantId] Tenant ID of the administrator.
  ManagedInstanceExternalAdministratorResponse({
    this.administratorType,
    this.azureADOnlyAuthentication,
    this.login,
    this.principalType,
    this.sid,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorType': ?administratorType,
      'azureADOnlyAuthentication': ?azureADOnlyAuthentication,
      'login': ?login,
      'principalType': ?principalType,
      'sid': ?sid,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedInstanceExternalAdministratorResponse.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceExternalAdministratorResponse(
      administratorType: map['administratorType'] == null ? null : map['administratorType'] as String,
      azureADOnlyAuthentication: map['azureADOnlyAuthentication'] == null ? null : map['azureADOnlyAuthentication'] as bool,
      login: map['login'] == null ? null : map['login'] as String,
      principalType: map['principalType'] == null ? null : map['principalType'] as String,
      sid: map['sid'] == null ? null : map['sid'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

