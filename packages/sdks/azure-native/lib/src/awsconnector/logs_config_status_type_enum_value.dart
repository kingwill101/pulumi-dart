// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LogsConfigStatusTypeEnumValue
class LogsConfigStatusTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [LogsConfigStatusTypeEnumValue].
  /// [value] Property value
  LogsConfigStatusTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory LogsConfigStatusTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return LogsConfigStatusTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

