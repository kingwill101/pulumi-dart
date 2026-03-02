// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SslNegotiationPolicyAttribute {
  /// The name of the attribute
  final pulumi.Input<String> name;
  /// The value of the attribute
  final pulumi.Input<String> value;

  /// Creates a new [SslNegotiationPolicyAttribute].
  /// [name] The name of the attribute
  /// [value] The value of the attribute
  SslNegotiationPolicyAttribute({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SslNegotiationPolicyAttribute.fromMap(Map<String, dynamic> map) {
    return SslNegotiationPolicyAttribute(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

