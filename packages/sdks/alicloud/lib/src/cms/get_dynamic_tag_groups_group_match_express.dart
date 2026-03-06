// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDynamicTagGroupsGroupMatchExpress {
  /// The tag value. The Tag value must be used in conjunction with the tag value matching method TagValueMatchFunction.
  final pulumi.Input<String> tagValue;
  /// Matching method of tag value. Valid values: `all`, `startWith`,`endWith`,`contains`,`notContains`,`equals`.
  final pulumi.Input<String> tagValueMatchFunction;

  /// Creates a new [GetDynamicTagGroupsGroupMatchExpress].
  /// [tagValue] The tag value. The Tag value must be used in conjunction with the tag value matching method TagValueMatchFunction.
  /// [tagValueMatchFunction] Matching method of tag value. Valid values: `all`, `startWith`,`endWith`,`contains`,`notContains`,`equals`.
  const GetDynamicTagGroupsGroupMatchExpress({
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
      tagValue: pulumi.Input.fromValue(map['tagValue'] as String),
      tagValueMatchFunction: pulumi.Input.fromValue(map['tagValueMatchFunction'] as String),
    );
  }
}

