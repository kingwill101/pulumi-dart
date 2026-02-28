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
    final map = <String, dynamic>{};
    map['resourceTagKey'] = resourceTagKey;
    final resourceTagValueValue = resourceTagValue;
    if (resourceTagValueValue != null) {
      map['resourceTagValue'] = resourceTagValueValue;
    }
    return map;
  }

  factory RuleExcludeResourceTag.fromMap(Map<String, dynamic> map) {
    return RuleExcludeResourceTag(
      resourceTagKey: map['resourceTagKey'] as String,
      resourceTagValue: map['resourceTagValue'] == null
          ? null
          : map['resourceTagValue'] as String,
    );
  }
}
