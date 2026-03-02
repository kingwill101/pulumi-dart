// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SSETypeEnumValue
class SSETypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SSETypeEnumValueResponse].
  /// [value] Property value
  SSETypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SSETypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return SSETypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

