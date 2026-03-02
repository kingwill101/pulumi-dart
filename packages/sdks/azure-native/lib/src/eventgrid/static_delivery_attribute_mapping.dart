// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Static delivery attribute mapping details.
class StaticDeliveryAttributeMapping {
  /// Boolean flag to tell if the attribute contains sensitive information .
  final pulumi.Input<bool>? isSecret;
  /// Name of the delivery attribute or header.
  final pulumi.Input<String>? name;
  /// Type of the delivery attribute or header name.
  /// Expected value is 'Static'.
  final pulumi.Input<String> type;
  /// Value of the delivery attribute.
  final pulumi.Input<String>? value;

  /// Creates a new [StaticDeliveryAttributeMapping].
  /// [isSecret] Boolean flag to tell if the attribute contains sensitive information .
  /// [name] Name of the delivery attribute or header.
  /// [type] Type of the delivery attribute or header name.
  /// [value] Value of the delivery attribute.
  StaticDeliveryAttributeMapping({
    this.isSecret,
    this.name,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSecret': ?isSecret,
      'name': ?name,
      'type': type,
      'value': ?value,
    };
  }

  factory StaticDeliveryAttributeMapping.fromMap(Map<String, dynamic> map) {
    return StaticDeliveryAttributeMapping(
      isSecret: map['isSecret'] == null ? null : (map['isSecret']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

