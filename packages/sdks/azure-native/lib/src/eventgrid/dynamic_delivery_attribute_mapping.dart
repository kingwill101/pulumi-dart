// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dynamic delivery attribute mapping details.
class DynamicDeliveryAttributeMapping {
  /// Name of the delivery attribute or header.
  final pulumi.Input<String?>? name;
  /// JSON path in the event which contains attribute value.
  final pulumi.Input<String?>? sourceField;
  /// Type of the delivery attribute or header name.
  /// Expected value is 'Dynamic'.
  final pulumi.Input<String> type;

  /// Creates a new [DynamicDeliveryAttributeMapping].
  /// [name] Name of the delivery attribute or header.
  /// [sourceField] JSON path in the event which contains attribute value.
  /// [type] Type of the delivery attribute or header name.
  const DynamicDeliveryAttributeMapping({
    this.name,
    this.sourceField,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceField': ?sourceField,
      'type': type,
    };
  }

  factory DynamicDeliveryAttributeMapping.fromMap(Map<String, dynamic> map) {
    return DynamicDeliveryAttributeMapping(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceField: (() { final guardedValue = map['sourceField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
