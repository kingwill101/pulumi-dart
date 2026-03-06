// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LogsConfigStatusTypeEnumValue
class LogsConfigStatusTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [LogsConfigStatusTypeEnumValue].
  /// [value] Property value
  const LogsConfigStatusTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory LogsConfigStatusTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return LogsConfigStatusTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

