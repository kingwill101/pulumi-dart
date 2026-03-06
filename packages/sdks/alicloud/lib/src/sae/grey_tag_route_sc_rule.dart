// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grey_tag_route_sc_rule_item.dart';

class GreyTagRouteScRule {
  /// The conditional Patterns for Grayscale Rules. Valid values: `AND`, `OR`.
  final pulumi.Input<String>? condition;
  /// A list of conditions items. See `items` below.
  final pulumi.Input<List<GreyTagRouteScRuleItem>>? items;
  /// The path corresponding to the grayscale rule.
  final pulumi.Input<String>? path;

  /// Creates a new [GreyTagRouteScRule].
  /// [condition] The conditional Patterns for Grayscale Rules. Valid values: `AND`, `OR`.
  /// [items] A list of conditions items. See `items` below.
  /// [path] The path corresponding to the grayscale rule.
  const GreyTagRouteScRule({
    this.condition,
    this.items,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'items': ?pulumi.Input.mapOptionalInputValue<List<GreyTagRouteScRuleItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GreyTagRouteScRuleItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': ?path,
    };
  }

  factory GreyTagRouteScRule.fromMap(Map<String, dynamic> map) {
    return GreyTagRouteScRule(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GreyTagRouteScRuleItem>(guardedValue, (value) => GreyTagRouteScRuleItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

