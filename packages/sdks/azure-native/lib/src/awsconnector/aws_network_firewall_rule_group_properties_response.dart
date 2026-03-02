// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_response.dart';
import 'tag_response.dart';

/// Definition of awsNetworkFirewallRuleGroup
class AwsNetworkFirewallRuleGroupPropertiesResponse {
  /// Property capacity
  final pulumi.Input<int>? capacity;
  /// Property description
  final pulumi.Input<String>? description;
  /// Property ruleGroup
  final pulumi.Input<RuleGroupResponse>? ruleGroup;
  /// A resource ARN.
  final pulumi.Input<String>? ruleGroupArn;
  /// Property ruleGroupId
  final pulumi.Input<String>? ruleGroupId;
  /// Property ruleGroupName
  final pulumi.Input<String>? ruleGroupName;
  /// Property tags
  final pulumi.Input<List<TagResponse>>? tags;
  /// Property type
  final pulumi.Input<String>? type;

  /// Creates a new [AwsNetworkFirewallRuleGroupPropertiesResponse].
  /// [capacity] Property capacity
  /// [description] Property description
  /// [ruleGroup] Property ruleGroup
  /// [ruleGroupArn] A resource ARN.
  /// [ruleGroupId] Property ruleGroupId
  /// [ruleGroupName] Property ruleGroupName
  /// [tags] Property tags
  /// [type] Property type
  AwsNetworkFirewallRuleGroupPropertiesResponse({
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
      'ruleGroup': ?pulumi.Input.mapOptionalInputValue<RuleGroupResponse, Map<String, dynamic>>(ruleGroup, (value) => value.toMap()),
      'ruleGroupArn': ?ruleGroupArn,
      'ruleGroupId': ?ruleGroupId,
      'ruleGroupName': ?ruleGroupName,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory AwsNetworkFirewallRuleGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsNetworkFirewallRuleGroupPropertiesResponse(
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ruleGroup: map['ruleGroup'] == null ? null : (RuleGroupResponse.fromMap((map['ruleGroup']! as Map).cast<String, dynamic>())).input(),
      ruleGroupArn: map['ruleGroupArn'] == null ? null : (map['ruleGroupArn']! as String).input(),
      ruleGroupId: map['ruleGroupId'] == null ? null : (map['ruleGroupId']! as String).input(),
      ruleGroupName: map['ruleGroupName'] == null ? null : (map['ruleGroupName']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagResponse>(map['tags']!, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

