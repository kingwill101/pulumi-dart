// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ContinuousBackupsStatusEnumValue
class ContinuousBackupsStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ContinuousBackupsStatusEnumValueResponse].
  /// [value] Property value
  ContinuousBackupsStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ContinuousBackupsStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupsStatusEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

