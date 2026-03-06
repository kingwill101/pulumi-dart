// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grey_tag_route_dubbo_rule_item.dart';

class GreyTagRouteDubboRule {
  /// The Conditional Patterns for Grayscale Rules. Valid values: `AND`, `OR`.
  final pulumi.Input<String>? condition;
  /// The service group.
  final pulumi.Input<String>? group;
  /// A list of conditions items. See `items` below.
  final pulumi.Input<List<GreyTagRouteDubboRuleItem>>? items;
  /// The method name
  final pulumi.Input<String>? methodName;
  /// The service name.
  final pulumi.Input<String>? serviceName;
  /// The service version.
  final pulumi.Input<String>? version;

  /// Creates a new [GreyTagRouteDubboRule].
  /// [condition] The Conditional Patterns for Grayscale Rules. Valid values: `AND`, `OR`.
  /// [group] The service group.
  /// [items] A list of conditions items. See `items` below.
  /// [methodName] The method name
  /// [serviceName] The service name.
  /// [version] The service version.
  const GreyTagRouteDubboRule({
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
      'items': ?pulumi.Input.mapOptionalInputValue<List<GreyTagRouteDubboRuleItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GreyTagRouteDubboRuleItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'methodName': ?methodName,
      'serviceName': ?serviceName,
      'version': ?version,
    };
  }

  factory GreyTagRouteDubboRule.fromMap(Map<String, dynamic> map) {
    return GreyTagRouteDubboRule(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GreyTagRouteDubboRuleItem>(guardedValue, (value) => GreyTagRouteDubboRuleItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      methodName: (() { final guardedValue = map['methodName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

