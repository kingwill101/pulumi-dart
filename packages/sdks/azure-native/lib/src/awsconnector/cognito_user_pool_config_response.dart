// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CognitoUserPoolConfig
class CognitoUserPoolConfigResponse {
  /// <p>A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.</p>
  final pulumi.Input<String>? appIdClientRegex;
  /// <p>The Amazon Web Services Region in which the user pool was created.</p>
  final pulumi.Input<String>? awsRegion;
  /// <p>The user pool ID.</p>
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [CognitoUserPoolConfigResponse].
  /// [appIdClientRegex] <p>A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.</p>
  /// [awsRegion] <p>The Amazon Web Services Region in which the user pool was created.</p>
  /// [userPoolId] <p>The user pool ID.</p>
  CognitoUserPoolConfigResponse({
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

  factory CognitoUserPoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return CognitoUserPoolConfigResponse(
      appIdClientRegex: map['appIdClientRegex'] == null ? null : (map['appIdClientRegex'] as String).input(),
      awsRegion: map['awsRegion'] == null ? null : (map['awsRegion'] as String).input(),
      userPoolId: map['userPoolId'] == null ? null : (map['userPoolId'] as String).input(),
    );
  }
}

