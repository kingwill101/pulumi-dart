// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GraphQLApiAdditionalAuthenticationProviderUserPoolConfig {
  /// Regular expression for validating the incoming Amazon Cognito User Pool app client ID.
  final pulumi.Input<String>? appIdClientRegex;
  /// AWS region in which the user pool was created.
  final pulumi.Input<String>? awsRegion;
  /// User pool ID.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [GraphQLApiAdditionalAuthenticationProviderUserPoolConfig].
  /// [appIdClientRegex] Regular expression for validating the incoming Amazon Cognito User Pool app client ID.
  /// [awsRegion] AWS region in which the user pool was created.
  /// [userPoolId] User pool ID.
  const GraphQLApiAdditionalAuthenticationProviderUserPoolConfig({
    this.appIdClientRegex,
    this.awsRegion,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIdClientRegex': ?appIdClientRegex,
      'awsRegion': ?awsRegion,
      'userPoolId': userPoolId,
    };
  }

  factory GraphQLApiAdditionalAuthenticationProviderUserPoolConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiAdditionalAuthenticationProviderUserPoolConfig(
      appIdClientRegex: (() { final guardedValue = map['appIdClientRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}
