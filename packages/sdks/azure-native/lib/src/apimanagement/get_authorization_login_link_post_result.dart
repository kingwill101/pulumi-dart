// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizationLoginLinkPost.
class GetAuthorizationLoginLinkPostResult {
  /// The login link
  final String? loginLink;

  /// Creates a new [GetAuthorizationLoginLinkPostResult].
  /// [loginLink] The login link
  GetAuthorizationLoginLinkPostResult({
    this.loginLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginLink': ?loginLink,
    };
  }

  factory GetAuthorizationLoginLinkPostResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationLoginLinkPostResult(
      loginLink: map['loginLink'] == null ? null : map['loginLink']! as String,
    );
  }
}

