// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointClientLoginBannerOption {
  final pulumi.Input<String> bannerText;
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetEndpointClientLoginBannerOption].
  /// [bannerText] Required.
  /// [enabled] Required.
  const GetEndpointClientLoginBannerOption({
    required this.bannerText,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannerText': bannerText,
      'enabled': enabled,
    };
  }

  factory GetEndpointClientLoginBannerOption.fromMap(Map<String, dynamic> map) {
    return GetEndpointClientLoginBannerOption(
      bannerText: pulumi.Input.fromValue(map['bannerText'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
