// ignore_for_file: unused_element, unnecessary_cast

class SslNegotiationPolicyAttribute {
  /// The name of the attribute
  final String name;

  /// The value of the attribute
  final String value;

  /// Creates a new [SslNegotiationPolicyAttribute].
  /// [name] The name of the attribute
  /// [value] The value of the attribute
  SslNegotiationPolicyAttribute({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory SslNegotiationPolicyAttribute.fromMap(Map<String, dynamic> map) {
    return SslNegotiationPolicyAttribute(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
