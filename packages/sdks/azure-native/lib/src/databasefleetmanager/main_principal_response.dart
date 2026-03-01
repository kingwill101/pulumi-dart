// ignore_for_file: unused_element, unnecessary_cast


/// A main principal.
class MainPrincipalResponse {
  /// Application Id of the main principal.
  final String? applicationId;
  /// Login name of the main principal.
  final String? login;
  /// Object Id of the main principal.
  final String? objectId;
  /// Principal type of the main principal.
  final String? principalType;
  /// Tenant Id of the main principal.
  final String? tenantId;

  /// Creates a new [MainPrincipalResponse].
  /// [applicationId] Application Id of the main principal.
  /// [login] Login name of the main principal.
  /// [objectId] Object Id of the main principal.
  /// [principalType] Principal type of the main principal.
  /// [tenantId] Tenant Id of the main principal.
  MainPrincipalResponse({
    this.applicationId,
    this.login,
    this.objectId,
    this.principalType,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'login': ?login,
      'objectId': ?objectId,
      'principalType': ?principalType,
      'tenantId': ?tenantId,
    };
  }

  factory MainPrincipalResponse.fromMap(Map<String, dynamic> map) {
    return MainPrincipalResponse(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      login: map['login'] == null ? null : map['login'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      principalType: map['principalType'] == null ? null : map['principalType'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

