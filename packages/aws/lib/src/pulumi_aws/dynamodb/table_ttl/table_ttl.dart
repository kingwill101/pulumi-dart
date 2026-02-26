// ignore_for_file: unused_element, unnecessary_cast

class TableTtl {
  /// Name of the table attribute to store the TTL timestamp in.
  /// Required if <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, must not be set otherwise.
  final String? attributeName;

  /// Whether TTL is enabled.
  /// Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enabled;

  TableTtl({
    this.attributeName,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeNameValue = attributeName;
    if (attributeNameValue != null) {
      map['attributeName'] = attributeNameValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory TableTtl.fromMap(Map<String, dynamic> map) {
    return TableTtl(
      attributeName:
          map['attributeName'] == null ? null : map['attributeName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
