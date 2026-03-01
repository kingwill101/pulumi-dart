// ignore_for_file: unused_element, unnecessary_cast


class RuleResourceTag {
  /// Tag key.
  ///
  /// The following argument is optional:
  final String resourceTagKey;
  /// Tag value.
  final String? resourceTagValue;

  /// Creates a new [RuleResourceTag].
  /// [resourceTagKey] Tag key.
  /// [resourceTagValue] Tag value.
  RuleResourceTag({
    required this.resourceTagKey,
    this.resourceTagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTagKey': resourceTagKey,
      'resourceTagValue': ?resourceTagValue,
    };
  }

  factory RuleResourceTag.fromMap(Map<String, dynamic> map) {
    return RuleResourceTag(
      resourceTagKey: map['resourceTagKey'] as String,
      resourceTagValue: map['resourceTagValue'] == null ? null : map['resourceTagValue'] as String,
    );
  }
}

