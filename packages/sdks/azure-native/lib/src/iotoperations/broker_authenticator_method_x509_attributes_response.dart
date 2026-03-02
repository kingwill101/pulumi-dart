// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BrokerAuthenticatorMethodX509Attributes properties.
class BrokerAuthenticatorMethodX509AttributesResponse {
  /// Attributes object.
  final pulumi.Input<Map<String, String>> attributes;
  /// Subject of the X509 attribute.
  final pulumi.Input<String> subject;

  /// Creates a new [BrokerAuthenticatorMethodX509AttributesResponse].
  /// [attributes] Attributes object.
  /// [subject] Subject of the X509 attribute.
  BrokerAuthenticatorMethodX509AttributesResponse({
    required this.attributes,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'subject': subject,
    };
  }

  factory BrokerAuthenticatorMethodX509AttributesResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509AttributesResponse(
      attributes: ((map['attributes'] as Map).cast<String, String>()).input(),
      subject: (map['subject'] as String).input(),
    );
  }
}

