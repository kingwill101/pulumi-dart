// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverFirewallRuleGroupAssociation.
class GetResolverFirewallRuleGroupAssociationResult {
  /// ARN of the firewall rule group association.
  final String? arn;
  /// The date and time that the association was created, in Unix time format and Coordinated Universal Time (UTC).
  final String? creationTime;
  /// A unique string defined by you to identify the request.
  final String? creatorRequestId;
  final String? firewallRuleGroupAssociationId;
  /// The unique identifier of the firewall rule group.
  final String? firewallRuleGroupId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The owner of the association, used only for associations that are not managed by you.
  final String? managedOwnerName;
  /// The date and time that the association was last modified, in Unix time format and Coordinated Universal Time (UTC).
  final String? modificationTime;
  /// If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections.
  final String? mutationProtection;
  /// The name of the association.
  final String? name;
  /// The setting that determines the processing order of the rule group among the rule groups that are associated with a single VPC.
  final int? priority;
  final String? region;
  /// The current status of the association.
  final String? status;
  /// Additional information about the status of the response, if available.
  final String? statusMessage;
  /// The unique identifier of the VPC that is associated with the rule group.
  final String? vpcId;

  /// Creates a new [GetResolverFirewallRuleGroupAssociationResult].
  /// [arn] ARN of the firewall rule group association.
  /// [creationTime] The date and time that the association was created, in Unix time format and Coordinated Universal Time (UTC).
  /// [creatorRequestId] A unique string defined by you to identify the request.
  /// [firewallRuleGroupAssociationId] Optional.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedOwnerName] The owner of the association, used only for associations that are not managed by you.
  /// [modificationTime] The date and time that the association was last modified, in Unix time format and Coordinated Universal Time (UTC).
  /// [mutationProtection] If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections.
  /// [name] The name of the association.
  /// [priority] The setting that determines the processing order of the rule group among the rule groups that are associated with a single VPC.
  /// [region] Optional.
  /// [status] The current status of the association.
  /// [statusMessage] Additional information about the status of the response, if available.
  /// [vpcId] The unique identifier of the VPC that is associated with the rule group.
  const GetResolverFirewallRuleGroupAssociationResult({
    this.arn,
    this.creationTime,
    this.creatorRequestId,
    this.firewallRuleGroupAssociationId,
    this.firewallRuleGroupId,
    this.id,
    this.managedOwnerName,
    this.modificationTime,
    this.mutationProtection,
    this.name,
    this.priority,
    this.region,
    this.status,
    this.statusMessage,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'creatorRequestId': ?creatorRequestId,
      'firewallRuleGroupAssociationId': ?firewallRuleGroupAssociationId,
      'firewallRuleGroupId': ?firewallRuleGroupId,
      'id': ?id,
      'managedOwnerName': ?managedOwnerName,
      'modificationTime': ?modificationTime,
      'mutationProtection': ?mutationProtection,
      'name': ?name,
      'priority': ?priority,
      'region': ?region,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'vpcId': ?vpcId,
    };
  }

  factory GetResolverFirewallRuleGroupAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRuleGroupAssociationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creatorRequestId: (() { final guardedValue = map['creatorRequestId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallRuleGroupAssociationId: (() { final guardedValue = map['firewallRuleGroupAssociationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallRuleGroupId: (() { final guardedValue = map['firewallRuleGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedOwnerName: (() { final guardedValue = map['managedOwnerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modificationTime: (() { final guardedValue = map['modificationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mutationProtection: (() { final guardedValue = map['mutationProtection']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
