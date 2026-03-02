// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGitHubOAuth.
class GetGitHubOAuthResult {
  /// URL for authorizing the Developer Hub GitHub App
  final String? authURL;
  /// OAuth token used to make calls to GitHub
  final String? token;

  /// Creates a new [GetGitHubOAuthResult].
  /// [authURL] URL for authorizing the Developer Hub GitHub App
  /// [token] OAuth token used to make calls to GitHub
  GetGitHubOAuthResult({
    this.authURL,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authURL': ?authURL,
      'token': ?token,
    };
  }

  factory GetGitHubOAuthResult.fromMap(Map<String, dynamic> map) {
    return GetGitHubOAuthResult(
      authURL: map['authURL'] == null ? null : map['authURL']! as String,
      token: map['token'] == null ? null : map['token']! as String,
    );
  }
}

