// ignore_for_file: unused_element, unnecessary_cast


/// The authentication info when authType is userAssignedIdentity
class UserAssignedIdentityAuthInfoResponse {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final String? authMode;
  /// The authentication type.
  /// Expected value is 'userAssignedIdentity'.
  final String authType;
  /// Client Id for userAssignedIdentity.
  final String? clientId;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final String? deleteOrUpdateBehavior;
  /// Optional, this value specifies the Azure role to be assigned
  final List<String>? roles;
  /// Subscription id for userAssignedIdentity.
  final String? subscriptionId;
  /// Username created in the database which is mapped to a user in AAD.
  final String? userName;

  /// Creates a new [UserAssignedIdentityAuthInfoResponse].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [clientId] Client Id for userAssignedIdentity.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [roles] Optional, this value specifies the Azure role to be assigned
  /// [subscriptionId] Subscription id for userAssignedIdentity.
  /// [userName] Username created in the database which is mapped to a user in AAD.
  UserAssignedIdentityAuthInfoResponse({
    this.authMode,
    required this.authType,
    this.clientId,
    this.deleteOrUpdateBehavior,
    this.roles,
    this.subscriptionId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'clientId': ?clientId,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'roles': ?roles,
      'subscriptionId': ?subscriptionId,
      'userName': ?userName,
    };
  }

  factory UserAssignedIdentityAuthInfoResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityAuthInfoResponse(
      authMode: map['authMode'] == null ? null : map['authMode'] as String,
      authType: map['authType'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : map['deleteOrUpdateBehavior'] as String,
      roles: map['roles'] == null ? null : (map['roles'] as List).cast<String>(),
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

