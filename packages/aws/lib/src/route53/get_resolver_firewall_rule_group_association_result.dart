// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverFirewallRuleGroupAssociation.
class GetResolverFirewallRuleGroupAssociationResult {
  /// The Amazon Resource Name (ARN) of the firewall rule group association.
  final String arn;
  /// The date and time that the association was created, in Unix time format and Coordinated Universal Time (UTC).
  final String creationTime;
  /// A unique string defined by you to identify the request.
  final String creatorRequestId;
  final String firewallRuleGroupAssociationId;
  /// The unique identifier of the firewall rule group.
  final String firewallRuleGroupId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The owner of the association, used only for associations that are not managed by you.
  final String managedOwnerName;
  /// The date and time that the association was last modified, in Unix time format and Coordinated Universal Time (UTC).
  final String modificationTime;
  /// If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections.
  final String mutationProtection;
  /// The name of the association.
  final String name;
  /// The setting that determines the processing order of the rule group among the rule groups that are associated with a single VPC.
  final int priority;
  final String region;
  /// The current status of the association.
  final String status;
  /// Additional information about the status of the response, if available.
  final String statusMessage;
  /// The unique identifier of the VPC that is associated with the rule group.
  final String vpcId;

  /// Creates a new [GetResolverFirewallRuleGroupAssociationResult].
  /// [arn] The Amazon Resource Name (ARN) of the firewall rule group association.
  /// [creationTime] The date and time that the association was created, in Unix time format and Coordinated Universal Time (UTC).
  /// [creatorRequestId] A unique string defined by you to identify the request.
  /// [firewallRuleGroupAssociationId] Required.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedOwnerName] The owner of the association, used only for associations that are not managed by you.
  /// [modificationTime] The date and time that the association was last modified, in Unix time format and Coordinated Universal Time (UTC).
  /// [mutationProtection] If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections.
  /// [name] The name of the association.
  /// [priority] The setting that determines the processing order of the rule group among the rule groups that are associated with a single VPC.
  /// [region] Required.
  /// [status] The current status of the association.
  /// [statusMessage] Additional information about the status of the response, if available.
  /// [vpcId] The unique identifier of the VPC that is associated with the rule group.
  GetResolverFirewallRuleGroupAssociationResult({
    required this.arn,
    required this.creationTime,
    required this.creatorRequestId,
    required this.firewallRuleGroupAssociationId,
    required this.firewallRuleGroupId,
    required this.id,
    required this.managedOwnerName,
    required this.modificationTime,
    required this.mutationProtection,
    required this.name,
    required this.priority,
    required this.region,
    required this.status,
    required this.statusMessage,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'creationTime': creationTime,
      'creatorRequestId': creatorRequestId,
      'firewallRuleGroupAssociationId': firewallRuleGroupAssociationId,
      'firewallRuleGroupId': firewallRuleGroupId,
      'id': id,
      'managedOwnerName': managedOwnerName,
      'modificationTime': modificationTime,
      'mutationProtection': mutationProtection,
      'name': name,
      'priority': priority,
      'region': region,
      'status': status,
      'statusMessage': statusMessage,
      'vpcId': vpcId,
    };
  }

  factory GetResolverFirewallRuleGroupAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRuleGroupAssociationResult(
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as String,
      creatorRequestId: map['creatorRequestId'] as String,
      firewallRuleGroupAssociationId: map['firewallRuleGroupAssociationId'] as String,
      firewallRuleGroupId: map['firewallRuleGroupId'] as String,
      id: map['id'] as String,
      managedOwnerName: map['managedOwnerName'] as String,
      modificationTime: map['modificationTime'] as String,
      mutationProtection: map['mutationProtection'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      region: map['region'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

