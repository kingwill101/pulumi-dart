// ignore_for_file: unused_element, unnecessary_cast

class ConfigSignInAnonymous {
  /// Whether anonymous user auth is enabled for the project or not.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedSignInHashConfig"" pulumi-lang-dotnet=""NestedSignInHashConfig"" pulumi-lang-go=""nestedSignInHashConfig"" pulumi-lang-python=""nested_sign_in_hash_config"" pulumi-lang-yaml=""nestedSignInHashConfig"" pulumi-lang-java=""nestedSignInHashConfig"">"nested_sign_in_hash_config"</span>></a>The <span pulumi-lang-nodejs="`hashConfig`" pulumi-lang-dotnet="`HashConfig`" pulumi-lang-go="`hashConfig`" pulumi-lang-python="`hash_config`" pulumi-lang-yaml="`hashConfig`" pulumi-lang-java="`hashConfig`">`hash_config`</span> block contains:
  final bool enabled;

  ConfigSignInAnonymous({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConfigSignInAnonymous.fromMap(Map<String, dynamic> map) {
    return ConfigSignInAnonymous(
      enabled: map['enabled'] as bool,
    );
  }
}
