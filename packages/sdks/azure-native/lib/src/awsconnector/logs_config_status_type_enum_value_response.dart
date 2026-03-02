// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LogsConfigStatusTypeEnumValue
class LogsConfigStatusTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [LogsConfigStatusTypeEnumValueResponse].
  /// [value] Property value
  LogsConfigStatusTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory LogsConfigStatusTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return LogsConfigStatusTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

