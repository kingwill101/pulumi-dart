// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetTrackingOptions {
  /// The domain to use for tracking open and click events.
  final pulumi.Input<String> customRedirectDomain;
  /// The https policy to use for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY` or `OPTIONAL`.
  final pulumi.Input<String>? httpsPolicy;

  /// Creates a new [ConfigurationSetTrackingOptions].
  /// [customRedirectDomain] The domain to use for tracking open and click events.
  /// [httpsPolicy] The https policy to use for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY` or `OPTIONAL`.
  const ConfigurationSetTrackingOptions({
    required this.customRedirectDomain,
    this.httpsPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRedirectDomain': customRedirectDomain,
      'httpsPolicy': ?httpsPolicy,
    };
  }

  factory ConfigurationSetTrackingOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetTrackingOptions(
      customRedirectDomain: pulumi.Input.fromValue(map['customRedirectDomain'] as String),
      httpsPolicy: (() { final guardedValue = map['httpsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
