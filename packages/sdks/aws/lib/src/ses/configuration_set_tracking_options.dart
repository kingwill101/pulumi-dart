// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetTrackingOptions {
  /// Custom subdomain that is used to redirect email recipients to the Amazon SES event tracking domain.
  final pulumi.Input<String>? customRedirectDomain;

  /// Creates a new [ConfigurationSetTrackingOptions].
  /// [customRedirectDomain] Custom subdomain that is used to redirect email recipients to the Amazon SES event tracking domain.
  const ConfigurationSetTrackingOptions({
    this.customRedirectDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRedirectDomain': ?customRedirectDomain,
    };
  }

  factory ConfigurationSetTrackingOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetTrackingOptions(
      customRedirectDomain: (() { final guardedValue = map['customRedirectDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

