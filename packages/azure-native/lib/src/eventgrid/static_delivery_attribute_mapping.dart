// ignore_for_file: unused_element, unnecessary_cast


/// Static delivery attribute mapping details.
class StaticDeliveryAttributeMapping {
  /// Boolean flag to tell if the attribute contains sensitive information .
  final bool? isSecret;
  /// Name of the delivery attribute or header.
  final String? name;
  /// Type of the delivery attribute or header name.
  /// Expected value is 'Static'.
  final String type;
  /// Value of the delivery attribute.
  final String? value;

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
      isSecret: map['isSecret'] == null ? null : map['isSecret'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

