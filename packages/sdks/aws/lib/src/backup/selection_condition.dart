// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'selection_condition_string_equal.dart';
import 'selection_condition_string_like.dart';
import 'selection_condition_string_not_equal.dart';
import 'selection_condition_string_not_like.dart';

class SelectionCondition {
  /// Filters the values of your tagged resources for only those resources that you tagged with the same value. Also called "exact matching". See below for details.
  final pulumi.Input<List<SelectionConditionStringEqual>>? stringEquals;
  /// Filters the values of your tagged resources for matching tag values with the use of a wildcard character (`*`) anywhere in the string. For example, `prod*` or `*rod*` matches the tag value `production`. See below for details.
  final pulumi.Input<List<SelectionConditionStringLike>>? stringLikes;
  /// Filters the values of your tagged resources for only those resources that you tagged that do not have the same value. Also called "negated matching". See below for details.
  final pulumi.Input<List<SelectionConditionStringNotEqual>>? stringNotEquals;
  /// Filters the values of your tagged resources for non-matching tag values with the use of a wildcard character (`*`) anywhere in the string. See below for details.
  final pulumi.Input<List<SelectionConditionStringNotLike>>? stringNotLikes;

  /// Creates a new [SelectionCondition].
  /// [stringEquals] Filters the values of your tagged resources for only those resources that you tagged with the same value. Also called "exact matching". See below for details.
  /// [stringLikes] Filters the values of your tagged resources for matching tag values with the use of a wildcard character (`*`) anywhere in the string. For example, `prod*` or `*rod*` matches the tag value `production`. See below for details.
  /// [stringNotEquals] Filters the values of your tagged resources for only those resources that you tagged that do not have the same value. Also called "negated matching". See below for details.
  /// [stringNotLikes] Filters the values of your tagged resources for non-matching tag values with the use of a wildcard character (`*`) anywhere in the string. See below for details.
  SelectionCondition({
    this.stringEquals,
    this.stringLikes,
    this.stringNotEquals,
    this.stringNotLikes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringEquals': ?pulumi.Input.mapOptionalInputValue<List<SelectionConditionStringEqual>, List<Map<String, dynamic>>>(stringEquals, (value) => pulumi.Input.encodeList<SelectionConditionStringEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringLikes': ?pulumi.Input.mapOptionalInputValue<List<SelectionConditionStringLike>, List<Map<String, dynamic>>>(stringLikes, (value) => pulumi.Input.encodeList<SelectionConditionStringLike, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotEquals': ?pulumi.Input.mapOptionalInputValue<List<SelectionConditionStringNotEqual>, List<Map<String, dynamic>>>(stringNotEquals, (value) => pulumi.Input.encodeList<SelectionConditionStringNotEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotLikes': ?pulumi.Input.mapOptionalInputValue<List<SelectionConditionStringNotLike>, List<Map<String, dynamic>>>(stringNotLikes, (value) => pulumi.Input.encodeList<SelectionConditionStringNotLike, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SelectionCondition.fromMap(Map<String, dynamic> map) {
    return SelectionCondition(
      stringEquals: map['stringEquals'] == null ? null : ((pulumi.Input.decodeList<SelectionConditionStringEqual>(map['stringEquals']!, (value) => SelectionConditionStringEqual.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      stringLikes: map['stringLikes'] == null ? null : ((pulumi.Input.decodeList<SelectionConditionStringLike>(map['stringLikes']!, (value) => SelectionConditionStringLike.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      stringNotEquals: map['stringNotEquals'] == null ? null : ((pulumi.Input.decodeList<SelectionConditionStringNotEqual>(map['stringNotEquals']!, (value) => SelectionConditionStringNotEqual.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      stringNotLikes: map['stringNotLikes'] == null ? null : ((pulumi.Input.decodeList<SelectionConditionStringNotLike>(map['stringNotLikes']!, (value) => SelectionConditionStringNotLike.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

