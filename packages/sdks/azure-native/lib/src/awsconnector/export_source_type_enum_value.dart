// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ExportSourceTypeEnumValue
class ExportSourceTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ExportSourceTypeEnumValue].
  /// [value] Property value
  ExportSourceTypeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ExportSourceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ExportSourceTypeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
