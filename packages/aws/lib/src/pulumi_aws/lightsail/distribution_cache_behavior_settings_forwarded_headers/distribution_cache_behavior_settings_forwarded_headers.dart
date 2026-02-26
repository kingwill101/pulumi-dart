// ignore_for_file: unused_element, unnecessary_cast

class DistributionCacheBehaviorSettingsForwardedHeaders {
  /// Specific headers to forward to your distribution's origin.
  final List<String>? headersAllowLists;

  /// Headers that you want your distribution to forward to your origin and base caching on. Valid values: <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, `allow-list`, <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>.
  final String? option;

  DistributionCacheBehaviorSettingsForwardedHeaders({
    this.headersAllowLists,
    this.option,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersAllowListsValue = headersAllowLists;
    if (headersAllowListsValue != null) {
      map['headersAllowLists'] = headersAllowListsValue;
    }
    final optionValue = option;
    if (optionValue != null) {
      map['option'] = optionValue;
    }
    return map;
  }

  factory DistributionCacheBehaviorSettingsForwardedHeaders.fromMap(
      Map<String, dynamic> map) {
    return DistributionCacheBehaviorSettingsForwardedHeaders(
      headersAllowLists: map['headersAllowLists'] == null
          ? null
          : (map['headersAllowLists'] as List).cast<String>(),
      option: map['option'] == null ? null : map['option'] as String,
    );
  }
}
