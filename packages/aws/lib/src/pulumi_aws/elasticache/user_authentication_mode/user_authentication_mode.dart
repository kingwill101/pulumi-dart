// ignore_for_file: unused_element, unnecessary_cast

class UserAuthenticationMode {
  final int? passwordCount;

  /// Specifies the passwords to use for authentication if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>.
  final List<String>? passwords;

  /// Specifies the authentication type. Possible options are: <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>, `no-password-required` or <span pulumi-lang-nodejs="`iam`" pulumi-lang-dotnet="`Iam`" pulumi-lang-go="`iam`" pulumi-lang-python="`iam`" pulumi-lang-yaml="`iam`" pulumi-lang-java="`iam`">`iam`</span>.
  final String type;

  UserAuthenticationMode({
    this.passwordCount,
    this.passwords,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordCountValue = passwordCount;
    if (passwordCountValue != null) {
      map['passwordCount'] = passwordCountValue;
    }
    final passwordsValue = passwords;
    if (passwordsValue != null) {
      map['passwords'] = passwordsValue;
    }
    map['type'] = type;
    return map;
  }

  factory UserAuthenticationMode.fromMap(Map<String, dynamic> map) {
    return UserAuthenticationMode(
      passwordCount:
          map['passwordCount'] == null ? null : map['passwordCount'] as int,
      passwords: map['passwords'] == null
          ? null
          : (map['passwords'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
