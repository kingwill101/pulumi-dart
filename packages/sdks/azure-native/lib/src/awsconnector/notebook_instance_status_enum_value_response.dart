// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NotebookInstanceStatusEnumValue
class NotebookInstanceStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [NotebookInstanceStatusEnumValueResponse].
  /// [value] Property value
  const NotebookInstanceStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory NotebookInstanceStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return NotebookInstanceStatusEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
