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
  const AwsNetworkFirewallRuleGroupPropertiesResponse({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroup: (() { final guardedValue = map['ruleGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleGroupArn: (() { final guardedValue = map['ruleGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroupId: (() { final guardedValue = map['ruleGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroupName: (() { final guardedValue = map['ruleGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
