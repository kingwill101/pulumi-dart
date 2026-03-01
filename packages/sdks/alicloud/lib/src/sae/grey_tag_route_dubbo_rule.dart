// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grey_tag_route_dubbo_rule_item.dart';

class GreyTagRouteDubboRule {
  /// The Conditional Patterns for Grayscale Rules. Valid values: `AND`, `OR`.
  final String? condition;
  /// The service group.
  final String? group;
  /// A list of conditions items. See `items` below.
  final List<GreyTagRouteDubboRuleItem>? items;
  /// The method name
  final String? methodName;
  /// The service name.
  final String? serviceName;
  /// The service version.
  final String? version;

  /// Creates a new [GreyTagRouteDubboRule].
  /// [condition] The Conditional Patterns for Grayscale Rules. Valid values: `AND`, `OR`.
  /// [group] The service group.
  /// [items] A list of conditions items. See `items` below.
  /// [methodName] The method name
  /// [serviceName] The service name.
  /// [version] The service version.
  GreyTagRouteDubboRule({
    this.condition,
    this.group,
    this.items,
    this.methodName,
    this.serviceName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'group': ?group,
      'items': ?items == null ? null : pulumi.Input.encodeList<GreyTagRouteDubboRuleItem, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'methodName': ?methodName,
      'serviceName': ?serviceName,
      'version': ?version,
    };
  }

  factory GreyTagRouteDubboRule.fromMap(Map<String, dynamic> map) {
    return GreyTagRouteDubboRule(
      condition: map['condition'] == null ? null : map['condition'] as String,
      group: map['group'] == null ? null : map['group'] as String,
      items: map['items'] == null ? null : pulumi.Input.decodeList<GreyTagRouteDubboRuleItem>(map['items'], (value) => GreyTagRouteDubboRuleItem.fromMap((value as Map).cast<String, dynamic>())),
      methodName: map['methodName'] == null ? null : map['methodName'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

