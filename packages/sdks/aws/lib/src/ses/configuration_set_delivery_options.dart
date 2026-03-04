// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetDeliveryOptions {
  /// Whether messages that use the configuration set are required to use Transport Layer Security (TLS). If the value is `Require`, messages are only delivered if a TLS connection can be established. If the value is `Optional`, messages can be delivered in plain text if a TLS connection can't be established. Valid values: `Require` or `Optional`. Defaults to `Optional`.
  final pulumi.Input<String>? tlsPolicy;

  /// Creates a new [ConfigurationSetDeliveryOptions].
  /// [tlsPolicy] Whether messages that use the configuration set are required to use Transport Layer Security (TLS). If the value is `Require`, messages are only delivered if a TLS connection can be established. If the value is `Optional`, messages can be delivered in plain text if a TLS connection can't be established. Valid values: `Require` or `Optional`. Defaults to `Optional`.
  ConfigurationSetDeliveryOptions({this.tlsPolicy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tlsPolicy': ?tlsPolicy};
  }

  factory ConfigurationSetDeliveryOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetDeliveryOptions(
      tlsPolicy: (() {
        final guardedValue = map['tlsPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
