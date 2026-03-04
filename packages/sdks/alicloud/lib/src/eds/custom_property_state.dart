// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_property_property_value.dart';

/// Input properties used for looking up and filtering CustomProperty resources.
class CustomPropertyState {
  /// The Custom attribute key.
  final pulumi.Input<String>? propertyKey;

  /// Custom attribute sets the value of. See `property_values` below.
  final pulumi.Input<List<CustomPropertyPropertyValue>>? propertyValues;

  /// Creates a new [CustomPropertyState].
  /// [propertyKey] The Custom attribute key.
  /// [propertyValues] Custom attribute sets the value of. See `property_values` below.
  CustomPropertyState({this.propertyKey, this.propertyValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyKey': ?propertyKey,
      'propertyValues':
          ?pulumi.Input.mapOptionalInputValue<
            List<CustomPropertyPropertyValue>,
            List<Map<String, dynamic>>
          >(
            propertyValues,
            (value) =>
                pulumi.Input.encodeList<
                  CustomPropertyPropertyValue,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CustomPropertyState.fromMap(Map<String, dynamic> map) {
    return CustomPropertyState(
      propertyKey: (() {
        final guardedValue = map['propertyKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      propertyValues: (() {
        final guardedValue = map['propertyValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CustomPropertyPropertyValue>(
            guardedValue,
            (value) => CustomPropertyPropertyValue.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
