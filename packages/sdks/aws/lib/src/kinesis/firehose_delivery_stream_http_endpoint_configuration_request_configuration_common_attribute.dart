// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute {
  /// The name of the HTTP endpoint common attribute.
  final pulumi.Input<String> name;
  /// The value of the HTTP endpoint common attribute.
  final pulumi.Input<String> value;

  /// Creates a new [FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute].
  /// [name] The name of the HTTP endpoint common attribute.
  /// [value] The value of the HTTP endpoint common attribute.
  FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttribute(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

