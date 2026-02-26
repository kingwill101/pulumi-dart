// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolClientTokenValidityUnit {
  /// (Optional) Time unit in for the value in <span pulumi-lang-nodejs="`accessTokenValidity`" pulumi-lang-dotnet="`AccessTokenValidity`" pulumi-lang-go="`accessTokenValidity`" pulumi-lang-python="`access_token_validity`" pulumi-lang-yaml="`accessTokenValidity`" pulumi-lang-java="`accessTokenValidity`">`access_token_validity`</span>, defaults to <span pulumi-lang-nodejs="`hours`" pulumi-lang-dotnet="`Hours`" pulumi-lang-go="`hours`" pulumi-lang-python="`hours`" pulumi-lang-yaml="`hours`" pulumi-lang-java="`hours`">`hours`</span>.
  final String accessToken;

  /// (Optional) Time unit in for the value in <span pulumi-lang-nodejs="`idTokenValidity`" pulumi-lang-dotnet="`IdTokenValidity`" pulumi-lang-go="`idTokenValidity`" pulumi-lang-python="`id_token_validity`" pulumi-lang-yaml="`idTokenValidity`" pulumi-lang-java="`idTokenValidity`">`id_token_validity`</span>, defaults to <span pulumi-lang-nodejs="`hours`" pulumi-lang-dotnet="`Hours`" pulumi-lang-go="`hours`" pulumi-lang-python="`hours`" pulumi-lang-yaml="`hours`" pulumi-lang-java="`hours`">`hours`</span>.
  final String idToken;

  /// (Optional) Time unit in for the value in <span pulumi-lang-nodejs="`refreshTokenValidity`" pulumi-lang-dotnet="`RefreshTokenValidity`" pulumi-lang-go="`refreshTokenValidity`" pulumi-lang-python="`refresh_token_validity`" pulumi-lang-yaml="`refreshTokenValidity`" pulumi-lang-java="`refreshTokenValidity`">`refresh_token_validity`</span>, defaults to <span pulumi-lang-nodejs="`days`" pulumi-lang-dotnet="`Days`" pulumi-lang-go="`days`" pulumi-lang-python="`days`" pulumi-lang-yaml="`days`" pulumi-lang-java="`days`">`days`</span>.
  final String refreshToken;

  GetUserPoolClientTokenValidityUnit({
    required this.accessToken,
    required this.idToken,
    required this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessToken'] = accessToken;
    map['idToken'] = idToken;
    map['refreshToken'] = refreshToken;
    return map;
  }

  factory GetUserPoolClientTokenValidityUnit.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientTokenValidityUnit(
      accessToken: map['accessToken'] as String,
      idToken: map['idToken'] as String,
      refreshToken: map['refreshToken'] as String,
    );
  }
}
