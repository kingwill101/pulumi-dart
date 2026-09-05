// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverFirewallRuleGroup.
class GetResolverFirewallRuleGroupResult {
  /// ARN of the rule group.
  final String? arn;
  /// The date and time that the rule group was created, in Unix time format and Coordinated Universal Time (UTC).
  final String? creationTime;
  /// A unique string defined by you to identify the request.
  final String? creatorRequestId;
  final String? firewallRuleGroupId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The date and time that the rule group was last modified, in Unix time format and Coordinated Universal Time (UTC).
  final String? modificationTime;
  /// The name of the rule group.
  final String? name;
  /// The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account, this is the account that has shared the rule group with you.
  final String? ownerId;
  final String? region;
  /// The number of rules in the rule group.
  final int? ruleCount;
  /// Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another Amazon Web Services account.
  final String? shareStatus;
  /// The status of the rule group.
  final String? status;
  /// Additional information about the status of the rule group, if available.
  final String? statusMessage;

  /// Creates a new [GetResolverFirewallRuleGroupResult].
  /// [arn] ARN of the rule group.
  /// [creationTime] The date and time that the rule group was created, in Unix time format and Coordinated Universal Time (UTC).
  /// [creatorRequestId] A unique string defined by you to identify the request.
  /// [firewallRuleGroupId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [modificationTime] The date and time that the rule group was last modified, in Unix time format and Coordinated Universal Time (UTC).
  /// [name] The name of the rule group.
  /// [ownerId] The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account, this is the account that has shared the rule group with you.
  /// [region] Optional.
  /// [ruleCount] The number of rules in the rule group.
  /// [shareStatus] Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another Amazon Web Services account.
  /// [status] The status of the rule group.
  /// [statusMessage] Additional information about the status of the rule group, if available.
  const GetResolverFirewallRuleGroupResult({
    this.arn,
    this.creationTime,
    this.creatorRequestId,
    this.firewallRuleGroupId,
    this.id,
    this.modificationTime,
    this.name,
    this.ownerId,
    this.region,
    this.ruleCount,
    this.shareStatus,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'creatorRequestId': ?creatorRequestId,
      'firewallRuleGroupId': ?firewallRuleGroupId,
      'id': ?id,
      'modificationTime': ?modificationTime,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'ruleCount': ?ruleCount,
      'shareStatus': ?shareStatus,
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory GetResolverFirewallRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRuleGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creatorRequestId: (() { final guardedValue = map['creatorRequestId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallRuleGroupId: (() { final guardedValue = map['firewallRuleGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modificationTime: (() { final guardedValue = map['modificationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleCount: (() { final guardedValue = map['ruleCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      shareStatus: (() { final guardedValue = map['shareStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
