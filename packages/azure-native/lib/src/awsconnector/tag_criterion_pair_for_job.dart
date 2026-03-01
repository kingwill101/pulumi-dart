// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TagCriterionPairForJob
class TagCriterionPairForJob {
  /// <p>The value for the tag key to use in the condition.</p>
  final String? key;
  /// <p>The tag value to use in the condition.</p>
  final String? value;

  /// Creates a new [TagCriterionPairForJob].
  /// [key] <p>The value for the tag key to use in the condition.</p>
  /// [value] <p>The tag value to use in the condition.</p>
  TagCriterionPairForJob({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TagCriterionPairForJob.fromMap(Map<String, dynamic> map) {
    return TagCriterionPairForJob(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

