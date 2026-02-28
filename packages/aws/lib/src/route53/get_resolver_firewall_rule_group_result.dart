// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getResolverFirewallRuleGroup.
class GetResolverFirewallRuleGroupResult {
  /// The ARN (Amazon Resource Name) of the rule group.
  final String arn;

  /// The date and time that the rule group was created, in Unix time format and Coordinated Universal Time (UTC).
  final String creationTime;

  /// A unique string defined by you to identify the request.
  final String creatorRequestId;
  final String firewallRuleGroupId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The date and time that the rule group was last modified, in Unix time format and Coordinated Universal Time (UTC).
  final String modificationTime;

  /// The name of the rule group.
  final String name;

  /// The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account, this is the account that has shared the rule group with you.
  final String ownerId;
  final String region;

  /// The number of rules in the rule group.
  final int ruleCount;

  /// Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another Amazon Web Services account.
  final String shareStatus;

  /// The status of the rule group.
  final String status;

  /// Additional information about the status of the rule group, if available.
  final String statusMessage;

  /// Creates a new [GetResolverFirewallRuleGroupResult].
  /// [arn] The ARN (Amazon Resource Name) of the rule group.
  /// [creationTime] The date and time that the rule group was created, in Unix time format and Coordinated Universal Time (UTC).
  /// [creatorRequestId] A unique string defined by you to identify the request.
  /// [firewallRuleGroupId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [modificationTime] The date and time that the rule group was last modified, in Unix time format and Coordinated Universal Time (UTC).
  /// [name] The name of the rule group.
  /// [ownerId] The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account, this is the account that has shared the rule group with you.
  /// [region] Required.
  /// [ruleCount] The number of rules in the rule group.
  /// [shareStatus] Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another Amazon Web Services account.
  /// [status] The status of the rule group.
  /// [statusMessage] Additional information about the status of the rule group, if available.
  GetResolverFirewallRuleGroupResult({
    required this.arn,
    required this.creationTime,
    required this.creatorRequestId,
    required this.firewallRuleGroupId,
    required this.id,
    required this.modificationTime,
    required this.name,
    required this.ownerId,
    required this.region,
    required this.ruleCount,
    required this.shareStatus,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['creationTime'] = creationTime;
    map['creatorRequestId'] = creatorRequestId;
    map['firewallRuleGroupId'] = firewallRuleGroupId;
    map['id'] = id;
    map['modificationTime'] = modificationTime;
    map['name'] = name;
    map['ownerId'] = ownerId;
    map['region'] = region;
    map['ruleCount'] = ruleCount;
    map['shareStatus'] = shareStatus;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    return map;
  }

  factory GetResolverFirewallRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRuleGroupResult(
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as String,
      creatorRequestId: map['creatorRequestId'] as String,
      firewallRuleGroupId: map['firewallRuleGroupId'] as String,
      id: map['id'] as String,
      modificationTime: map['modificationTime'] as String,
      name: map['name'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      ruleCount: map['ruleCount'] as int,
      shareStatus: map['shareStatus'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}
