// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointClientLoginBannerOption {
  final String bannerText;
  final bool enabled;

  /// Creates a new [GetEndpointClientLoginBannerOption].
  /// [bannerText] Required.
  /// [enabled] Required.
  GetEndpointClientLoginBannerOption({
    required this.bannerText,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bannerText'] = bannerText;
    map['enabled'] = enabled;
    return map;
  }

  factory GetEndpointClientLoginBannerOption.fromMap(Map<String, dynamic> map) {
    return GetEndpointClientLoginBannerOption(
      bannerText: map['bannerText'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
