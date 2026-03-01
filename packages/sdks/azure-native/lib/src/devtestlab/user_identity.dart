// ignore_for_file: unused_element, unnecessary_cast


/// Identity attributes of a lab user.
class UserIdentity {
  /// Set to the app Id of the client JWT making the request.
  final String? appId;
  /// Set to the object Id of the client JWT making the request. Not all users have object Id. For CSP (reseller) scenarios for example, object Id is not available.
  final String? objectId;
  /// Set to the principal Id of the client JWT making the request. Service principal will not have the principal Id.
  final String? principalId;
  /// Set to the principal name / UPN of the client JWT making the request.
  final String? principalName;
  /// Set to the tenant ID of the client JWT making the request.
  final String? tenantId;

  /// Creates a new [UserIdentity].
  /// [appId] Set to the app Id of the client JWT making the request.
  /// [objectId] Set to the object Id of the client JWT making the request. Not all users have object Id. For CSP (reseller) scenarios for example, object Id is not available.
  /// [principalId] Set to the principal Id of the client JWT making the request. Service principal will not have the principal Id.
  /// [principalName] Set to the principal name / UPN of the client JWT making the request.
  /// [tenantId] Set to the tenant ID of the client JWT making the request.
  UserIdentity({
    this.appId,
    this.objectId,
    this.principalId,
    this.principalName,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'objectId': ?objectId,
      'principalId': ?principalId,
      'principalName': ?principalName,
      'tenantId': ?tenantId,
    };
  }

  factory UserIdentity.fromMap(Map<String, dynamic> map) {
    return UserIdentity(
      appId: map['appId'] == null ? null : map['appId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      principalName: map['principalName'] == null ? null : map['principalName'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

