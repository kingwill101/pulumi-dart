// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grey_tag_routes_route_dubbo_rule_item.dart';

class GetGreyTagRoutesRouteDubboRule {
  /// The conditional Patterns for Grayscale Rules.
  final pulumi.Input<String> condition;

  /// The service group.
  final pulumi.Input<String> group;

  /// A list of conditions items.
  final pulumi.Input<List<GetGreyTagRoutesRouteDubboRuleItem>> items;

  /// The method name
  final pulumi.Input<String> methodName;

  /// The service name.
  final pulumi.Input<String> serviceName;

  /// The service version.
  final pulumi.Input<String> version;

  /// Creates a new [GetGreyTagRoutesRouteDubboRule].
  /// [condition] The conditional Patterns for Grayscale Rules.
  /// [group] The service group.
  /// [items] A list of conditions items.
  /// [methodName] The method name
  /// [serviceName] The service name.
  /// [version] The service version.
  GetGreyTagRoutesRouteDubboRule({
    required this.condition,
    required this.group,
    required this.items,
    required this.methodName,
    required this.serviceName,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'group': group,
      'items':
          pulumi.Input.mapInputValue<
            List<GetGreyTagRoutesRouteDubboRuleItem>,
            List<Map<String, dynamic>>
          >(
            items,
            (value) =>
                pulumi.Input.encodeList<
                  GetGreyTagRoutesRouteDubboRuleItem,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'methodName': methodName,
      'serviceName': serviceName,
      'version': version,
    };
  }

  factory GetGreyTagRoutesRouteDubboRule.fromMap(Map<String, dynamic> map) {
    return GetGreyTagRoutesRouteDubboRule(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      group: pulumi.Input.fromValue(map['group'] as String),
      items: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetGreyTagRoutesRouteDubboRuleItem>(
          map['items']!,
          (value) => GetGreyTagRoutesRouteDubboRuleItem.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      methodName: pulumi.Input.fromValue(map['methodName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
