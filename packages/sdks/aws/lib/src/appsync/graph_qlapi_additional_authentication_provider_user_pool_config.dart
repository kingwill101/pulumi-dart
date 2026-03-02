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
  GraphQLApiAdditionalAuthenticationProviderUserPoolConfig({
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
      appIdClientRegex: map['appIdClientRegex'] == null ? null : ((map['appIdClientRegex'] as String).input()).input(),
      awsRegion: map['awsRegion'] == null ? null : ((map['awsRegion'] as String).input()).input(),
      userPoolId: (map['userPoolId'] as String).input(),
    );
  }
}

