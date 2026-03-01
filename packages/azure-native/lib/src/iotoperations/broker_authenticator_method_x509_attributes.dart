// ignore_for_file: unused_element, unnecessary_cast


/// BrokerAuthenticatorMethodX509Attributes properties.
class BrokerAuthenticatorMethodX509Attributes {
  /// Attributes object.
  final Map<String, String> attributes;
  /// Subject of the X509 attribute.
  final String subject;

  /// Creates a new [BrokerAuthenticatorMethodX509Attributes].
  /// [attributes] Attributes object.
  /// [subject] Subject of the X509 attribute.
  BrokerAuthenticatorMethodX509Attributes({
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
      attributes: (map['attributes'] as Map).cast<String, String>(),
      subject: map['subject'] as String,
    );
  }
}

