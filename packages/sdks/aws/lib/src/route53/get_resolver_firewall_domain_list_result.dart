// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverFirewallDomainList.
class GetResolverFirewallDomainListResult {
  /// ARN of the firewall domain list.
  final String? arn;
  /// The date and time that the domain list was created, in Unix time format and Coordinated Universal Time (UTC).
  final String? creationTime;
  /// A unique string defined by you to identify the request.
  final String? creatorRequestId;
  /// The number of domain names that are specified in the domain list.
  final int? domainCount;
  final String? firewallDomainListId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The owner of the list, used only for lists that are not managed by you.
  final String? managedOwnerName;
  /// The date and time that the domain list was last modified, in Unix time format and Coordinated Universal Time (UTC).
  final String? modificationTime;
  /// The name of the domain list.
  final String? name;
  final String? region;
  /// The status of the domain list.
  final String? status;
  /// Additional information about the status of the list, if available.
  final String? statusMessage;

  /// Creates a new [GetResolverFirewallDomainListResult].
  /// [arn] ARN of the firewall domain list.
  /// [creationTime] The date and time that the domain list was created, in Unix time format and Coordinated Universal Time (UTC).
  /// [creatorRequestId] A unique string defined by you to identify the request.
  /// [domainCount] The number of domain names that are specified in the domain list.
  /// [firewallDomainListId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedOwnerName] The owner of the list, used only for lists that are not managed by you.
  /// [modificationTime] The date and time that the domain list was last modified, in Unix time format and Coordinated Universal Time (UTC).
  /// [name] The name of the domain list.
  /// [region] Optional.
  /// [status] The status of the domain list.
  /// [statusMessage] Additional information about the status of the list, if available.
  const GetResolverFirewallDomainListResult({
    this.arn,
    this.creationTime,
    this.creatorRequestId,
    this.domainCount,
    this.firewallDomainListId,
    this.id,
    this.managedOwnerName,
    this.modificationTime,
    this.name,
    this.region,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'creatorRequestId': ?creatorRequestId,
      'domainCount': ?domainCount,
      'firewallDomainListId': ?firewallDomainListId,
      'id': ?id,
      'managedOwnerName': ?managedOwnerName,
      'modificationTime': ?modificationTime,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory GetResolverFirewallDomainListResult.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallDomainListResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creatorRequestId: (() { final guardedValue = map['creatorRequestId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainCount: (() { final guardedValue = map['domainCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      firewallDomainListId: (() { final guardedValue = map['firewallDomainListId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedOwnerName: (() { final guardedValue = map['managedOwnerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modificationTime: (() { final guardedValue = map['modificationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
