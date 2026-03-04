// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CognitoUserPoolConfig
class CognitoUserPoolConfigResponse {
  /// &lt;p&gt;A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.&lt;/p&gt;
  final pulumi.Input<String>? appIdClientRegex;

  /// &lt;p&gt;The Amazon Web Services Region in which the user pool was created.&lt;/p&gt;
  final pulumi.Input<String>? awsRegion;

  /// &lt;p&gt;The user pool ID.&lt;/p&gt;
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [CognitoUserPoolConfigResponse].
  /// [appIdClientRegex] &lt;p&gt;A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.&lt;/p&gt;
  /// [awsRegion] &lt;p&gt;The Amazon Web Services Region in which the user pool was created.&lt;/p&gt;
  /// [userPoolId] &lt;p&gt;The user pool ID.&lt;/p&gt;
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
      appIdClientRegex: (() {
        final guardedValue = map['appIdClientRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      awsRegion: (() {
        final guardedValue = map['awsRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPoolId: (() {
        final guardedValue = map['userPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
