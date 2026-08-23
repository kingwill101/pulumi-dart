// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFactoryGitHubAccessToken.
class GetFactoryGitHubAccessTokenResult {
  /// GitHub access token.
  final String? gitHubAccessToken;

  /// Creates a new [GetFactoryGitHubAccessTokenResult].
  /// [gitHubAccessToken] GitHub access token.
  const GetFactoryGitHubAccessTokenResult({
    this.gitHubAccessToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitHubAccessToken': ?gitHubAccessToken,
    };
  }

  factory GetFactoryGitHubAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return GetFactoryGitHubAccessTokenResult(
      gitHubAccessToken: (() { final guardedValue = map['gitHubAccessToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
