// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CognitoUserPoolConfig
class CognitoUserPoolConfig {
  /// <p>A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.</p>
  final String? appIdClientRegex;
  /// <p>The Amazon Web Services Region in which the user pool was created.</p>
  final String? awsRegion;
  /// <p>The user pool ID.</p>
  final String? userPoolId;

  /// Creates a new [CognitoUserPoolConfig].
  /// [appIdClientRegex] <p>A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.</p>
  /// [awsRegion] <p>The Amazon Web Services Region in which the user pool was created.</p>
  /// [userPoolId] <p>The user pool ID.</p>
  CognitoUserPoolConfig({
    this.appIdClientRegex,
    this.awsRegion,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIdClientRegex': ?appIdClientRegex,
      'awsRegion': ?awsRegion,
      'userPoolId': ?userPoolId,
    };
  }

  factory CognitoUserPoolConfig.fromMap(Map<String, dynamic> map) {
    return CognitoUserPoolConfig(
      appIdClientRegex: map['appIdClientRegex'] == null ? null : map['appIdClientRegex'] as String,
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      userPoolId: map['userPoolId'] == null ? null : map['userPoolId'] as String,
    );
  }
}

