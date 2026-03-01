// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the Azure Active Directory login flow.
class AzureActiveDirectoryLogin {
  /// <code>true</code> if the www-authenticate provider should be omitted from the request; otherwise, <code>false</code>.
  final bool? disableWWWAuthenticate;
  /// Login parameters to send to the OpenID Connect authorization endpoint when
  /// a user logs in. Each parameter must be in the form "key=value".
  final List<String>? loginParameters;

  /// Creates a new [AzureActiveDirectoryLogin].
  /// [disableWWWAuthenticate] <code>true</code> if the www-authenticate provider should be omitted from the request; otherwise, <code>false</code>.
  /// [loginParameters] Login parameters to send to the OpenID Connect authorization endpoint when
  AzureActiveDirectoryLogin({
    this.disableWWWAuthenticate,
    this.loginParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableWWWAuthenticate': ?disableWWWAuthenticate,
      'loginParameters': ?loginParameters,
    };
  }

  factory AzureActiveDirectoryLogin.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryLogin(
      disableWWWAuthenticate: map['disableWWWAuthenticate'] == null ? null : map['disableWWWAuthenticate'] as bool,
      loginParameters: map['loginParameters'] == null ? null : (map['loginParameters'] as List).cast<String>(),
    );
  }
}

