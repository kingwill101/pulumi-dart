// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BrokerAuthenticatorMethodX509Attributes properties.
class BrokerAuthenticatorMethodX509Attributes {
  /// Attributes object.
  final pulumi.Input<Map<String, String>> attributes;
  /// Subject of the X509 attribute.
  final pulumi.Input<String> subject;

  /// Creates a new [BrokerAuthenticatorMethodX509Attributes].
  /// [attributes] Attributes object.
  /// [subject] Subject of the X509 attribute.
  const BrokerAuthenticatorMethodX509Attributes({
    required this.attributes,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'subject': subject,
    };
  }

  factory BrokerAuthenticatorMethodX509Attributes.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509Attributes(
      attributes: pulumi.Input.fromValue((map['attributes'] as Map).cast<String, String>()),
      subject: pulumi.Input.fromValue(map['subject'] as String),
    );
  }
}

