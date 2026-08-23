// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TagCriterionPairForJob
class TagCriterionPairForJobResponse {
  /// &lt;p&gt;The value for the tag key to use in the condition.&lt;/p&gt;
  final pulumi.Input<String>? key;
  /// &lt;p&gt;The tag value to use in the condition.&lt;/p&gt;
  final pulumi.Input<String>? value;

  /// Creates a new [TagCriterionPairForJobResponse].
  /// [key] &lt;p&gt;The value for the tag key to use in the condition.&lt;/p&gt;
  /// [value] &lt;p&gt;The tag value to use in the condition.&lt;/p&gt;
  const TagCriterionPairForJobResponse({
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
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
