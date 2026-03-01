// ignore_for_file: unused_element, unnecessary_cast


class RuleExcludeResourceTag {
  /// Tag key.
  ///
  /// The following argument is optional:
  final String resourceTagKey;
  /// Tag value.
  final String? resourceTagValue;

  /// Creates a new [RuleExcludeResourceTag].
  /// [resourceTagKey] Tag key.
  /// [resourceTagValue] Tag value.
  RuleExcludeResourceTag({
    required this.resourceTagKey,
    this.resourceTagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTagKey': resourceTagKey,
      'resourceTagValue': ?resourceTagValue,
    };
  }

  factory RuleExcludeResourceTag.fromMap(Map<String, dynamic> map) {
    return RuleExcludeResourceTag(
      resourceTagKey: map['resourceTagKey'] as String,
      resourceTagValue: map['resourceTagValue'] == null ? null : map['resourceTagValue'] as String,
    );
  }
}

