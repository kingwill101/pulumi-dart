// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grey_tag_routes_route_sc_rule_item.dart';

class GetGreyTagRoutesRouteScRule {
  /// The Conditional Patterns for Grayscale Rules.
  final String condition;
  /// A list of conditions items.
  final List<GetGreyTagRoutesRouteScRuleItem> items;
  /// The path corresponding to the grayscale rule.
  final String path;

  /// Creates a new [GetGreyTagRoutesRouteScRule].
  /// [condition] The Conditional Patterns for Grayscale Rules.
  /// [items] A list of conditions items.
  /// [path] The path corresponding to the grayscale rule.
  GetGreyTagRoutesRouteScRule({
    required this.condition,
    required this.items,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'items': pulumi.Input.encodeList<GetGreyTagRoutesRouteScRuleItem, Map<String, dynamic>>(items, (value) => value.toMap()),
      'path': path,
    };
  }

  factory GetGreyTagRoutesRouteScRule.fromMap(Map<String, dynamic> map) {
    return GetGreyTagRoutesRouteScRule(
      condition: map['condition'] as String,
      items: pulumi.Input.decodeList<GetGreyTagRoutesRouteScRuleItem>(map['items'], (value) => GetGreyTagRoutesRouteScRuleItem.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
    );
  }
}

