// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AttachmentStatusEnumValue
class AttachmentStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [AttachmentStatusEnumValueResponse].
  /// [value] Property value
  AttachmentStatusEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory AttachmentStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AttachmentStatusEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
