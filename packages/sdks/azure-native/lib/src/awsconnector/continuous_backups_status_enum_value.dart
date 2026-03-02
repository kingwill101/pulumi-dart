// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ContinuousBackupsStatusEnumValue
class ContinuousBackupsStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ContinuousBackupsStatusEnumValue].
  /// [value] Property value
  ContinuousBackupsStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ContinuousBackupsStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupsStatusEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

