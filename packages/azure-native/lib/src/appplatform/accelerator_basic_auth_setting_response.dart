// ignore_for_file: unused_element, unnecessary_cast


/// Auth setting for basic auth.
class AcceleratorBasicAuthSettingResponse {
  /// The type of the auth setting.
  /// Expected value is 'BasicAuth'.
  final String authType;
  /// Resource Id of CA certificate for https URL of Git repository.
  final String? caCertResourceId;
  /// Username of git repository basic auth.
  final String username;

  /// Creates a new [AcceleratorBasicAuthSettingResponse].
  /// [authType] The type of the auth setting.
  /// [caCertResourceId] Resource Id of CA certificate for https URL of Git repository.
  /// [username] Username of git repository basic auth.
  AcceleratorBasicAuthSettingResponse({
    required this.authType,
    this.caCertResourceId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'caCertResourceId': ?caCertResourceId,
      'username': username,
    };
  }

  factory AcceleratorBasicAuthSettingResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorBasicAuthSettingResponse(
      authType: map['authType'] as String,
      caCertResourceId: map['caCertResourceId'] == null ? null : map['caCertResourceId'] as String,
      username: map['username'] as String,
    );
  }
}

