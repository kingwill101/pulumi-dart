// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SourceAuthTypeEnumValue
class SourceAuthTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SourceAuthTypeEnumValue].
  /// [value] Property value
  SourceAuthTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SourceAuthTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return SourceAuthTypeEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

