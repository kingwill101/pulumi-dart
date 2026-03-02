// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SourceAuthTypeEnumValue
class SourceAuthTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SourceAuthTypeEnumValueResponse].
  /// [value] Property value
  SourceAuthTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SourceAuthTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return SourceAuthTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

