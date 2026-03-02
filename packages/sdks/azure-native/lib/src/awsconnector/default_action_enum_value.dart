// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DefaultActionEnumValue
class DefaultActionEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [DefaultActionEnumValue].
  /// [value] Property value
  DefaultActionEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DefaultActionEnumValue.fromMap(Map<String, dynamic> map) {
    return DefaultActionEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

