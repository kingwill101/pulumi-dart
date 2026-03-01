// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grey_tag_route_sc_rule_item.dart';

class GreyTagRouteScRule {
  /// The conditional Patterns for Grayscale Rules. Valid values: `AND`, `OR`.
  final String? condition;
  /// A list of conditions items. See `items` below.
  final List<GreyTagRouteScRuleItem>? items;
  /// The path corresponding to the grayscale rule.
  final String? path;

  /// Creates a new [GreyTagRouteScRule].
  /// [condition] The conditional Patterns for Grayscale Rules. Valid values: `AND`, `OR`.
  /// [items] A list of conditions items. See `items` below.
  /// [path] The path corresponding to the grayscale rule.
  GreyTagRouteScRule({
    this.condition,
    this.items,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'items': ?items == null ? null : pulumi.Input.encodeList<GreyTagRouteScRuleItem, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'path': ?path,
    };
  }

  factory GreyTagRouteScRule.fromMap(Map<String, dynamic> map) {
    return GreyTagRouteScRule(
      condition: map['condition'] == null ? null : map['condition'] as String,
      items: map['items'] == null ? null : pulumi.Input.decodeList<GreyTagRouteScRuleItem>(map['items'], (value) => GreyTagRouteScRuleItem.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

