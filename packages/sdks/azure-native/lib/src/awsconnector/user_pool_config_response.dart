// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_action_enum_value_response.dart';

/// Definition of UserPoolConfig
class UserPoolConfigResponse {
  /// &lt;p&gt;A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.&lt;/p&gt;
  final pulumi.Input<String>? appIdClientRegex;
  /// &lt;p&gt;The Amazon Web Services Region in which the user pool was created.&lt;/p&gt;
  final pulumi.Input<String>? awsRegion;
  /// &lt;p&gt;The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool configuration.&lt;/p&gt;
  final pulumi.Input<DefaultActionEnumValueResponse>? defaultAction;
  /// &lt;p&gt;The user pool ID.&lt;/p&gt;
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [UserPoolConfigResponse].
  /// [appIdClientRegex] &lt;p&gt;A regular expression for validating the incoming Amazon Cognito user pool app client ID. If this value isn't set, no filtering is applied.&lt;/p&gt;
  /// [awsRegion] &lt;p&gt;The Amazon Web Services Region in which the user pool was created.&lt;/p&gt;
  /// [defaultAction] &lt;p&gt;The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool configuration.&lt;/p&gt;
  /// [userPoolId] &lt;p&gt;The user pool ID.&lt;/p&gt;
  const UserPoolConfigResponse({
    this.appIdClientRegex,
    this.awsRegion,
    this.defaultAction,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIdClientRegex': ?appIdClientRegex,
      'awsRegion': ?awsRegion,
      'defaultAction': ?pulumi.Input.mapOptionalInputValue<DefaultActionEnumValueResponse, Map<String, dynamic>>(defaultAction, (value) => value.toMap()),
      'userPoolId': ?userPoolId,
    };
  }

  factory UserPoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return UserPoolConfigResponse(
      appIdClientRegex: (() { final guardedValue = map['appIdClientRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultActionEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

