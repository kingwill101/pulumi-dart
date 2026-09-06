// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ImageTypeValuesEnumValue
class ImageTypeValuesEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [ImageTypeValuesEnumValueResponse].
  /// [value] Property value
  const ImageTypeValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ImageTypeValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ImageTypeValuesEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
