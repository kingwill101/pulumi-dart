// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grey_tag_routes_route_dubbo_rule_item.dart';

class GetGreyTagRoutesRouteDubboRule {
  /// The conditional Patterns for Grayscale Rules.
  final String condition;
  /// The service group.
  final String group;
  /// A list of conditions items.
  final List<GetGreyTagRoutesRouteDubboRuleItem> items;
  /// The method name
  final String methodName;
  /// The service name.
  final String serviceName;
  /// The service version.
  final String version;

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
      'items': pulumi.Input.encodeList<GetGreyTagRoutesRouteDubboRuleItem, Map<String, dynamic>>(items, (value) => value.toMap()),
      'methodName': methodName,
      'serviceName': serviceName,
      'version': version,
    };
  }

  factory GetGreyTagRoutesRouteDubboRule.fromMap(Map<String, dynamic> map) {
    return GetGreyTagRoutesRouteDubboRule(
      condition: map['condition'] as String,
      group: map['group'] as String,
      items: pulumi.Input.decodeList<GetGreyTagRoutesRouteDubboRuleItem>(map['items'], (value) => GetGreyTagRoutesRouteDubboRuleItem.fromMap((value as Map).cast<String, dynamic>())),
      methodName: map['methodName'] as String,
      serviceName: map['serviceName'] as String,
      version: map['version'] as String,
    );
  }
}

