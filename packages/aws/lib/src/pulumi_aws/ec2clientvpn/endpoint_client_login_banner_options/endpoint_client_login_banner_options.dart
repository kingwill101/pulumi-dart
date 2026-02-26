// ignore_for_file: unused_element, unnecessary_cast

class EndpointClientLoginBannerOptions {
  /// Customizable text that will be displayed in a banner on AWS provided clients when a VPN session is established. UTF-8 encoded characters only. Maximum of 1400 characters.
  final String? bannerText;

  /// Enable or disable a customizable text banner that will be displayed on AWS provided clients when a VPN session is established. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> (not enabled).
  final bool? enabled;

  EndpointClientLoginBannerOptions({
    this.bannerText,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bannerTextValue = bannerText;
    if (bannerTextValue != null) {
      map['bannerText'] = bannerTextValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory EndpointClientLoginBannerOptions.fromMap(Map<String, dynamic> map) {
    return EndpointClientLoginBannerOptions(
      bannerText:
          map['bannerText'] == null ? null : map['bannerText'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
