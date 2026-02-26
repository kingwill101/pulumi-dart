// ignore_for_file: unused_element, unnecessary_cast

class GetUserAuthenticationMode2 {
  /// Number of passwords belonging to the user if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>.
  final int passwordCount;

  /// Type of authentication configured.
  final String type;

  GetUserAuthenticationMode2({
    required this.passwordCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['passwordCount'] = passwordCount;
    map['type'] = type;
    return map;
  }

  factory GetUserAuthenticationMode2.fromMap(Map<String, dynamic> map) {
    return GetUserAuthenticationMode2(
      passwordCount: map['passwordCount'] as int,
      type: map['type'] as String,
    );
  }
}
