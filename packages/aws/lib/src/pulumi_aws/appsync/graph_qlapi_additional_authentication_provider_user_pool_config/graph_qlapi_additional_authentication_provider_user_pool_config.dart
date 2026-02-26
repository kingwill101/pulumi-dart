// ignore_for_file: unused_element, unnecessary_cast

class GraphQLApiAdditionalAuthenticationProviderUserPoolConfig {
  /// Regular expression for validating the incoming Amazon Cognito User Pool app client ID.
  final String? appIdClientRegex;

  /// AWS region in which the user pool was created.
  final String? awsRegion;

  /// User pool ID.
  final String userPoolId;

  GraphQLApiAdditionalAuthenticationProviderUserPoolConfig({
    this.appIdClientRegex,
    this.awsRegion,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appIdClientRegexValue = appIdClientRegex;
    if (appIdClientRegexValue != null) {
      map['appIdClientRegex'] = appIdClientRegexValue;
    }
    final awsRegionValue = awsRegion;
    if (awsRegionValue != null) {
      map['awsRegion'] = awsRegionValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory GraphQLApiAdditionalAuthenticationProviderUserPoolConfig.fromMap(
      Map<String, dynamic> map) {
    return GraphQLApiAdditionalAuthenticationProviderUserPoolConfig(
      appIdClientRegex: map['appIdClientRegex'] == null
          ? null
          : map['appIdClientRegex'] as String,
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
