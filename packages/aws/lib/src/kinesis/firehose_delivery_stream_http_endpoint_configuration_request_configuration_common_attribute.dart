// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute {
  /// The name of the HTTP endpoint common attribute.
  final String name;

  /// The value of the HTTP endpoint common attribute.
  final String value;

  /// Creates a new [FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute].
  /// [name] The name of the HTTP endpoint common attribute.
  /// [value] The value of the HTTP endpoint common attribute.
  FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
