// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOfferingsOfferingProperty {
  /// Property name.
  final pulumi.Input<String> name;
  /// Property value.
  final pulumi.Input<String> value;

  /// Creates a new [GetOfferingsOfferingProperty].
  /// [name] Property name.
  /// [value] Property value.
  const GetOfferingsOfferingProperty({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetOfferingsOfferingProperty.fromMap(Map<String, dynamic> map) {
    return GetOfferingsOfferingProperty(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
