// ignore_for_file: unused_element, unnecessary_cast

class DistributionCacheBehaviorSettingsForwardedCookies {
  /// Specific cookies to forward to your distribution's origin.
  final List<String>? cookiesAllowLists;

  /// Which cookies to forward to the distribution's origin for a cache behavior. Valid values: <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>, <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, `allow-list`.
  final String? option;

  DistributionCacheBehaviorSettingsForwardedCookies({
    this.cookiesAllowLists,
    this.option,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cookiesAllowListsValue = cookiesAllowLists;
    if (cookiesAllowListsValue != null) {
      map['cookiesAllowLists'] = cookiesAllowListsValue;
    }
    final optionValue = option;
    if (optionValue != null) {
      map['option'] = optionValue;
    }
    return map;
  }

  factory DistributionCacheBehaviorSettingsForwardedCookies.fromMap(
      Map<String, dynamic> map) {
    return DistributionCacheBehaviorSettingsForwardedCookies(
      cookiesAllowLists: map['cookiesAllowLists'] == null
          ? null
          : (map['cookiesAllowLists'] as List).cast<String>(),
      option: map['option'] == null ? null : map['option'] as String,
    );
  }
}
