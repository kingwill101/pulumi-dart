// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TagCriterionPairForJob
class TagCriterionPairForJobResponse {
  /// <p>The value for the tag key to use in the condition.</p>
  final pulumi.Input<String>? key;
  /// <p>The tag value to use in the condition.</p>
  final pulumi.Input<String>? value;

  /// Creates a new [TagCriterionPairForJobResponse].
  /// [key] <p>The value for the tag key to use in the condition.</p>
  /// [value] <p>The tag value to use in the condition.</p>
  TagCriterionPairForJobResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TagCriterionPairForJobResponse.fromMap(Map<String, dynamic> map) {
    return TagCriterionPairForJobResponse(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

