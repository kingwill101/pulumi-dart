// ignore_for_file: unused_element, unnecessary_cast


class GetDynamicTagGroupsGroupMatchExpress {
  /// The tag value. The Tag value must be used in conjunction with the tag value matching method TagValueMatchFunction.
  final String tagValue;
  /// Matching method of tag value. Valid values: `all`, `startWith`,`endWith`,`contains`,`notContains`,`equals`.
  final String tagValueMatchFunction;

  /// Creates a new [GetDynamicTagGroupsGroupMatchExpress].
  /// [tagValue] The tag value. The Tag value must be used in conjunction with the tag value matching method TagValueMatchFunction.
  /// [tagValueMatchFunction] Matching method of tag value. Valid values: `all`, `startWith`,`endWith`,`contains`,`notContains`,`equals`.
  GetDynamicTagGroupsGroupMatchExpress({
    required this.tagValue,
    required this.tagValueMatchFunction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagValue': tagValue,
      'tagValueMatchFunction': tagValueMatchFunction,
    };
  }

  factory GetDynamicTagGroupsGroupMatchExpress.fromMap(Map<String, dynamic> map) {
    return GetDynamicTagGroupsGroupMatchExpress(
      tagValue: map['tagValue'] as String,
      tagValueMatchFunction: map['tagValueMatchFunction'] as String,
    );
  }
}

