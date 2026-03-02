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
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ruleGroup: map['ruleGroup'] == null ? null : (RuleGroup.fromMap((map['ruleGroup']! as Map).cast<String, dynamic>())).input(),
      ruleGroupArn: map['ruleGroupArn'] == null ? null : (map['ruleGroupArn']! as String).input(),
      ruleGroupId: map['ruleGroupId'] == null ? null : (map['ruleGroupId']! as String).input(),
      ruleGroupName: map['ruleGroupName'] == null ? null : (map['ruleGroupName']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags']!, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

