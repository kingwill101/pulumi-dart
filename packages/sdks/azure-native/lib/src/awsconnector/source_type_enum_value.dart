// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SourceTypeEnumValue
class SourceTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SourceTypeEnumValue].
  /// [value] Property value
  SourceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SourceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return SourceTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

