// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group.dart';
import 'tag.dart';

/// Definition of awsNetworkFirewallRuleGroup
class AwsNetworkFirewallRuleGroupProperties {
  /// Property capacity
  final pulumi.Input<int>? capacity;
  /// Property description
  final pulumi.Input<String>? description;
  /// Property ruleGroup
  final pulumi.Input<RuleGroup>? ruleGroup;
  /// A resource ARN.
  final pulumi.Input<String>? ruleGroupArn;
  /// Property ruleGroupId
  final pulumi.Input<String>? ruleGroupId;
  /// Property ruleGroupName
  final pulumi.Input<String>? ruleGroupName;
  /// Property tags
  final pulumi.Input<List<Tag>>? tags;
  /// Property type
  final pulumi.Input<String>? type;

  /// Creates a new [AwsNetworkFirewallRuleGroupProperties].
  /// [capacity] Property capacity
  /// [description] Property description
  /// [ruleGroup] Property ruleGroup
  /// [ruleGroupArn] A resource ARN.
  /// [ruleGroupId] Property ruleGroupId
  /// [ruleGroupName] Property ruleGroupName
  /// [tags] Property tags
  /// [type] Property type
  const AwsNetworkFirewallRuleGroupProperties({
    this.capacity,
    this.description,
    this.ruleGroup,
    this.ruleGroupArn,
    this.ruleGroupId,
    this.ruleGroupName,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'description': ?description,
      'ruleGroup': ?pulumi.Input.mapOptionalInputValue<RuleGroup, Map<String, dynamic>>(ruleGroup, (value) => value.toMap()),
      'ruleGroupArn': ?ruleGroupArn,
      'ruleGroupId': ?ruleGroupId,
      'ruleGroupName': ?ruleGroupName,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory AwsNetworkFirewallRuleGroupProperties.fromMap(Map<String, dynamic> map) {
    return AwsNetworkFirewallRuleGroupProperties(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroup: (() { final guardedValue = map['ruleGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleGroupArn: (() { final guardedValue = map['ruleGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroupId: (() { final guardedValue = map['ruleGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroupName: (() { final guardedValue = map['ruleGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

