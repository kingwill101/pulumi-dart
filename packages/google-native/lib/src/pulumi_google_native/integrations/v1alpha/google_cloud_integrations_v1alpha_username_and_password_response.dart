// ignore_for_file: unused_element, unnecessary_cast

/// Username and password pair.
class GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse {
  /// Password to be used
  final String password;

  /// Username to be used
  final String username;

  GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
