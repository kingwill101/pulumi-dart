// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointClientLoginBannerOptions {
  /// Customizable text that will be displayed in a banner on AWS provided clients when a VPN session is established. UTF-8 encoded characters only. Maximum of 1400 characters.
  final pulumi.Input<String>? bannerText;
  /// Enable or disable a customizable text banner that will be displayed on AWS provided clients when a VPN session is established. The default is `false` (not enabled).
  final pulumi.Input<bool>? enabled;

  /// Creates a new [EndpointClientLoginBannerOptions].
  /// [bannerText] Customizable text that will be displayed in a banner on AWS provided clients when a VPN session is established. UTF-8 encoded characters only. Maximum of 1400 characters.
  /// [enabled] Enable or disable a customizable text banner that will be displayed on AWS provided clients when a VPN session is established. The default is `false` (not enabled).
  const EndpointClientLoginBannerOptions({
    this.bannerText,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannerText': ?bannerText,
      'enabled': ?enabled,
    };
  }

  factory EndpointClientLoginBannerOptions.fromMap(Map<String, dynamic> map) {
    return EndpointClientLoginBannerOptions(
      bannerText: (() { final guardedValue = map['bannerText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
