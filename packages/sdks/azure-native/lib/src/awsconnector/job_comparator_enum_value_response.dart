// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of JobComparatorEnumValue
class JobComparatorEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [JobComparatorEnumValueResponse].
  /// [value] Property value
  const JobComparatorEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobComparatorEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return JobComparatorEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
