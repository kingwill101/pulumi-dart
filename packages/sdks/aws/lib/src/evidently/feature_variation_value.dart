// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureVariationValue {
  /// If this feature uses the Boolean variation type, this field contains the Boolean value of this variation.
  final pulumi.Input<String?>? boolValue;
  /// If this feature uses the double integer variation type, this field contains the double integer value of this variation.
  final pulumi.Input<String?>? doubleValue;
  /// If this feature uses the long variation type, this field contains the long value of this variation. Minimum value of `-9007199254740991`. Maximum value of `9007199254740991`.
  final pulumi.Input<String?>? longValue;
  /// If this feature uses the string variation type, this field contains the string value of this variation. Minimum length of `0`. Maximum length of `512`.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [FeatureVariationValue].
  /// [boolValue] If this feature uses the Boolean variation type, this field contains the Boolean value of this variation.
  /// [doubleValue] If this feature uses the double integer variation type, this field contains the double integer value of this variation.
  /// [longValue] If this feature uses the long variation type, this field contains the long value of this variation. Minimum value of `-9007199254740991`. Maximum value of `9007199254740991`.
  /// [stringValue] If this feature uses the string variation type, this field contains the string value of this variation. Minimum length of `0`. Maximum length of `512`.
  const FeatureVariationValue({
    this.boolValue,
    this.doubleValue,
    this.longValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'doubleValue': ?doubleValue,
      'longValue': ?longValue,
      'stringValue': ?stringValue,
    };
  }

  factory FeatureVariationValue.fromMap(Map<String, dynamic> map) {
    return FeatureVariationValue(
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      doubleValue: (() { final guardedValue = map['doubleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longValue: (() { final guardedValue = map['longValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
