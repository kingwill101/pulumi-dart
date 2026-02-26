// ignore_for_file: unused_element, unnecessary_cast

class UserAuthenticationMode2 {
  /// Number of passwords belonging to the user if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>.
  final int? passwordCount;

  /// Set of passwords used for authentication if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>. You can create up to two passwords for each user.
  final List<String>? passwords;

  /// Specifies the authentication type. Valid values are: <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span> or <span pulumi-lang-nodejs="`iam`" pulumi-lang-dotnet="`Iam`" pulumi-lang-go="`iam`" pulumi-lang-python="`iam`" pulumi-lang-yaml="`iam`" pulumi-lang-java="`iam`">`iam`</span>.
  final String type;

  UserAuthenticationMode2({
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

  factory UserAuthenticationMode2.fromMap(Map<String, dynamic> map) {
    return UserAuthenticationMode2(
      passwordCount:
          map['passwordCount'] == null ? null : map['passwordCount'] as int,
      passwords: map['passwords'] == null
          ? null
          : (map['passwords'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
