// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group.dart';
import 'tag.dart';

/// Definition of awsNetworkFirewallRuleGroup
class AwsNetworkFirewallRuleGroupProperties {
  /// Property capacity
  final int? capacity;
  /// Property description
  final String? description;
  /// Property ruleGroup
  final RuleGroup? ruleGroup;
  /// A resource ARN.
  final String? ruleGroupArn;
  /// Property ruleGroupId
  final String? ruleGroupId;
  /// Property ruleGroupName
  final String? ruleGroupName;
  /// Property tags
  final List<Tag>? tags;
  /// Property type
  final String? type;

  /// Creates a new [AwsNetworkFirewallRuleGroupProperties].
  /// [capacity] Property capacity
  /// [description] Property description
  /// [ruleGroup] Property ruleGroup
  /// [ruleGroupArn] A resource ARN.
  /// [ruleGroupId] Property ruleGroupId
  /// [ruleGroupName] Property ruleGroupName
  /// [tags] Property tags
  /// [type] Property type
  AwsNetworkFirewallRuleGroupProperties({
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
      'ruleGroup': ?ruleGroup == null ? null : ruleGroup!.toMap(),
      'ruleGroupArn': ?ruleGroupArn,
      'ruleGroupId': ?ruleGroupId,
      'ruleGroupName': ?ruleGroupName,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory AwsNetworkFirewallRuleGroupProperties.fromMap(Map<String, dynamic> map) {
    return AwsNetworkFirewallRuleGroupProperties(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      ruleGroup: map['ruleGroup'] == null ? null : RuleGroup.fromMap((map['ruleGroup'] as Map).cast<String, dynamic>()),
      ruleGroupArn: map['ruleGroupArn'] == null ? null : map['ruleGroupArn'] as String,
      ruleGroupId: map['ruleGroupId'] == null ? null : map['ruleGroupId'] as String,
      ruleGroupName: map['ruleGroupName'] == null ? null : map['ruleGroupName'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

