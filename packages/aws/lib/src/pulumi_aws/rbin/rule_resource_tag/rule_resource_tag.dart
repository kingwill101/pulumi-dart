// ignore_for_file: unused_element, unnecessary_cast

class RuleResourceTag {
  /// Tag key.
  ///
  /// The following argument is optional:
  final String resourceTagKey;

  /// Tag value.
  final String? resourceTagValue;

  RuleResourceTag({
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

  factory RuleResourceTag.fromMap(Map<String, dynamic> map) {
    return RuleResourceTag(
      resourceTagKey: map['resourceTagKey'] as String,
      resourceTagValue: map['resourceTagValue'] == null
          ? null
          : map['resourceTagValue'] as String,
    );
  }
}
