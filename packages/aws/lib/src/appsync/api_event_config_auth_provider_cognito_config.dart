// ignore_for_file: unused_element, unnecessary_cast

class ApiEventConfigAuthProviderCognitoConfig {
  /// Regular expression for matching the client ID.
  final String? appIdClientRegex;

  /// AWS region where the user pool is located.
  final String awsRegion;

  /// ID of the Cognito user pool.
  final String userPoolId;

  /// Creates a new [ApiEventConfigAuthProviderCognitoConfig].
  /// [appIdClientRegex] Regular expression for matching the client ID.
  /// [awsRegion] AWS region where the user pool is located.
  /// [userPoolId] ID of the Cognito user pool.
  ApiEventConfigAuthProviderCognitoConfig({
    this.appIdClientRegex,
    required this.awsRegion,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIdClientRegex': ?appIdClientRegex,
      'awsRegion': awsRegion,
      'userPoolId': userPoolId,
    };
  }

  factory ApiEventConfigAuthProviderCognitoConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiEventConfigAuthProviderCognitoConfig(
      appIdClientRegex: map['appIdClientRegex'] == null
          ? null
          : map['appIdClientRegex'] as String,
      awsRegion: map['awsRegion'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
