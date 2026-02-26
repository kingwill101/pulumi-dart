// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../selection_condition_string_equal/selection_condition_string_equal.dart';
import '../selection_condition_string_like/selection_condition_string_like.dart';
import '../selection_condition_string_not_equal/selection_condition_string_not_equal.dart';
import '../selection_condition_string_not_like/selection_condition_string_not_like.dart';

class SelectionCondition {
  /// Filters the values of your tagged resources for only those resources that you tagged with the same value. Also called "exact matching". See below for details.
  final List<SelectionConditionStringEqual>? stringEquals;

  /// Filters the values of your tagged resources for matching tag values with the use of a wildcard character (`*`) anywhere in the string. For example, `prod*` or `*rod*` matches the tag value <span pulumi-lang-nodejs="`production`" pulumi-lang-dotnet="`Production`" pulumi-lang-go="`production`" pulumi-lang-python="`production`" pulumi-lang-yaml="`production`" pulumi-lang-java="`production`">`production`</span>. See below for details.
  final List<SelectionConditionStringLike>? stringLikes;

  /// Filters the values of your tagged resources for only those resources that you tagged that do not have the same value. Also called "negated matching". See below for details.
  final List<SelectionConditionStringNotEqual>? stringNotEquals;

  /// Filters the values of your tagged resources for non-matching tag values with the use of a wildcard character (`*`) anywhere in the string. See below for details.
  final List<SelectionConditionStringNotLike>? stringNotLikes;

  SelectionCondition({
    this.stringEquals,
    this.stringLikes,
    this.stringNotEquals,
    this.stringNotLikes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stringEqualsValue = stringEquals;
    if (stringEqualsValue != null) {
      map['stringEquals'] =
          Input.encodeList<SelectionConditionStringEqual, Map<String, dynamic>>(
              stringEqualsValue, (value) => value.toMap());
    }
    final stringLikesValue = stringLikes;
    if (stringLikesValue != null) {
      map['stringLikes'] =
          Input.encodeList<SelectionConditionStringLike, Map<String, dynamic>>(
              stringLikesValue, (value) => value.toMap());
    }
    final stringNotEqualsValue = stringNotEquals;
    if (stringNotEqualsValue != null) {
      map['stringNotEquals'] = Input.encodeList<
          SelectionConditionStringNotEqual,
          Map<String, dynamic>>(stringNotEqualsValue, (value) => value.toMap());
    }
    final stringNotLikesValue = stringNotLikes;
    if (stringNotLikesValue != null) {
      map['stringNotLikes'] = Input.encodeList<SelectionConditionStringNotLike,
          Map<String, dynamic>>(stringNotLikesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SelectionCondition.fromMap(Map<String, dynamic> map) {
    return SelectionCondition(
      stringEquals: map['stringEquals'] == null
          ? null
          : Input.decodeList<SelectionConditionStringEqual>(
              map['stringEquals'],
              (value) => SelectionConditionStringEqual.fromMap(
                  (value as Map).cast<String, dynamic>())),
      stringLikes: map['stringLikes'] == null
          ? null
          : Input.decodeList<SelectionConditionStringLike>(
              map['stringLikes'],
              (value) => SelectionConditionStringLike.fromMap(
                  (value as Map).cast<String, dynamic>())),
      stringNotEquals: map['stringNotEquals'] == null
          ? null
          : Input.decodeList<SelectionConditionStringNotEqual>(
              map['stringNotEquals'],
              (value) => SelectionConditionStringNotEqual.fromMap(
                  (value as Map).cast<String, dynamic>())),
      stringNotLikes: map['stringNotLikes'] == null
          ? null
          : Input.decodeList<SelectionConditionStringNotLike>(
              map['stringNotLikes'],
              (value) => SelectionConditionStringNotLike.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
