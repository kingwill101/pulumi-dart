// ignore_for_file: unused_element, unnecessary_cast

import 'default_action_enum_value_response.dart';

/// Definition of UserPoolConfig
class UserPoolConfigResponse {
  /// <p>A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.</p>
  final String? appIdClientRegex;
  /// <p>The Amazon Web Services Region in which the user pool was created.</p>
  final String? awsRegion;
  /// <p>The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool configuration.</p>
  final DefaultActionEnumValueResponse? defaultAction;
  /// <p>The user pool ID.</p>
  final String? userPoolId;

  /// Creates a new [UserPoolConfigResponse].
  /// [appIdClientRegex] <p>A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.</p>
  /// [awsRegion] <p>The Amazon Web Services Region in which the user pool was created.</p>
  /// [defaultAction] <p>The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool configuration.</p>
  /// [userPoolId] <p>The user pool ID.</p>
  UserPoolConfigResponse({
    this.appIdClientRegex,
    this.awsRegion,
    this.defaultAction,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIdClientRegex': ?appIdClientRegex,
      'awsRegion': ?awsRegion,
      'defaultAction': ?defaultAction == null ? null : defaultAction!.toMap(),
      'userPoolId': ?userPoolId,
    };
  }

  factory UserPoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return UserPoolConfigResponse(
      appIdClientRegex: map['appIdClientRegex'] == null ? null : map['appIdClientRegex'] as String,
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      defaultAction: map['defaultAction'] == null ? null : DefaultActionEnumValueResponse.fromMap((map['defaultAction'] as Map).cast<String, dynamic>()),
      userPoolId: map['userPoolId'] == null ? null : map['userPoolId'] as String,
    );
  }
}

