// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationSetTrackingOption {
  /// Domain used for tracking open and click events.
  final pulumi.Input<String> customRedirectDomain;
  /// HTTPS policy used for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY`, or `OPTIONAL`.
  final pulumi.Input<String> httpsPolicy;

  /// Creates a new [GetConfigurationSetTrackingOption].
  /// [customRedirectDomain] Domain used for tracking open and click events.
  /// [httpsPolicy] HTTPS policy used for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY`, or `OPTIONAL`.
  const GetConfigurationSetTrackingOption({
    required this.customRedirectDomain,
    required this.httpsPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRedirectDomain': customRedirectDomain,
      'httpsPolicy': httpsPolicy,
    };
  }

  factory GetConfigurationSetTrackingOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetTrackingOption(
      customRedirectDomain: pulumi.Input.fromValue(map['customRedirectDomain'] as String),
      httpsPolicy: pulumi.Input.fromValue(map['httpsPolicy'] as String),
    );
  }
}
