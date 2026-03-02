// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the Azure Active Directory login flow.
class AzureActiveDirectoryLoginResponse {
  /// <code>true</code> if the www-authenticate provider should be omitted from the request; otherwise, <code>false</code>.
  final pulumi.Input<bool>? disableWWWAuthenticate;
  /// Login parameters to send to the OpenID Connect authorization endpoint when
  /// a user logs in. Each parameter must be in the form "key=value".
  final pulumi.Input<List<String>>? loginParameters;

  /// Creates a new [AzureActiveDirectoryLoginResponse].
  /// [disableWWWAuthenticate] <code>true</code> if the www-authenticate provider should be omitted from the request; otherwise, <code>false</code>.
  /// [loginParameters] Login parameters to send to the OpenID Connect authorization endpoint when
  AzureActiveDirectoryLoginResponse({
    this.disableWWWAuthenticate,
    this.loginParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableWWWAuthenticate': ?disableWWWAuthenticate,
      'loginParameters': ?loginParameters,
    };
  }

  factory AzureActiveDirectoryLoginResponse.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryLoginResponse(
      disableWWWAuthenticate: map['disableWWWAuthenticate'] == null ? null : (map['disableWWWAuthenticate']! as bool).input(),
      loginParameters: map['loginParameters'] == null ? null : ((map['loginParameters']! as List).cast<String>()).input(),
    );
  }
}

