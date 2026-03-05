// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClusterGatewaySettings.
class GetClusterGatewaySettingsResult {
  /// Indicates whether or not the gateway settings based authorization is enabled.
  final String isCredentialEnabled;

  /// The gateway settings user password.
  final String password;

  /// The gateway settings user name.
  final String userName;

  /// Creates a new [GetClusterGatewaySettingsResult].
  /// [isCredentialEnabled] Indicates whether or not the gateway settings based authorization is enabled.
  /// [password] The gateway settings user password.
  /// [userName] The gateway settings user name.
  GetClusterGatewaySettingsResult({
    required this.isCredentialEnabled,
    required this.password,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCredentialEnabled': isCredentialEnabled,
      'password': password,
      'userName': userName,
    };
  }

  factory GetClusterGatewaySettingsResult.fromMap(Map<String, dynamic> map) {
    return GetClusterGatewaySettingsResult(
      isCredentialEnabled: map['isCredentialEnabled'] as String,
      password: map['password'] as String,
      userName: map['userName'] as String,
    );
  }
}
