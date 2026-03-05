// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ImageStateEnumValue
class ImageStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ImageStateEnumValue].
  /// [value] Property value
  ImageStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ImageStateEnumValue.fromMap(Map<String, dynamic> map) {
    return ImageStateEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

