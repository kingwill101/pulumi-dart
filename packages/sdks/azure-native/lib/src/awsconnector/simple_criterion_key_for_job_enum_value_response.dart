// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SimpleCriterionKeyForJobEnumValue
class SimpleCriterionKeyForJobEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SimpleCriterionKeyForJobEnumValueResponse].
  /// [value] Property value
  SimpleCriterionKeyForJobEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SimpleCriterionKeyForJobEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return SimpleCriterionKeyForJobEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

