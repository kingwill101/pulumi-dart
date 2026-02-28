// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getResolverFirewallDomainList.
class GetResolverFirewallDomainListResult {
  /// The Amazon Resource Name (ARN) of the firewall domain list.
  final String arn;

  /// The date and time that the domain list was created, in Unix time format and Coordinated Universal Time (UTC).
  final String creationTime;

  /// A unique string defined by you to identify the request.
  final String creatorRequestId;

  /// The number of domain names that are specified in the domain list.
  final int domainCount;
  final String firewallDomainListId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The owner of the list, used only for lists that are not managed by you.
  final String managedOwnerName;

  /// The date and time that the domain list was last modified, in Unix time format and Coordinated Universal Time (UTC).
  final String modificationTime;

  /// The name of the domain list.
  final String name;
  final String region;

  /// The status of the domain list.
  final String status;

  /// Additional information about the status of the list, if available.
  final String statusMessage;

  /// Creates a new [GetResolverFirewallDomainListResult].
  /// [arn] The Amazon Resource Name (ARN) of the firewall domain list.
  /// [creationTime] The date and time that the domain list was created, in Unix time format and Coordinated Universal Time (UTC).
  /// [creatorRequestId] A unique string defined by you to identify the request.
  /// [domainCount] The number of domain names that are specified in the domain list.
  /// [firewallDomainListId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedOwnerName] The owner of the list, used only for lists that are not managed by you.
  /// [modificationTime] The date and time that the domain list was last modified, in Unix time format and Coordinated Universal Time (UTC).
  /// [name] The name of the domain list.
  /// [region] Required.
  /// [status] The status of the domain list.
  /// [statusMessage] Additional information about the status of the list, if available.
  GetResolverFirewallDomainListResult({
    required this.arn,
    required this.creationTime,
    required this.creatorRequestId,
    required this.domainCount,
    required this.firewallDomainListId,
    required this.id,
    required this.managedOwnerName,
    required this.modificationTime,
    required this.name,
    required this.region,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['creationTime'] = creationTime;
    map['creatorRequestId'] = creatorRequestId;
    map['domainCount'] = domainCount;
    map['firewallDomainListId'] = firewallDomainListId;
    map['id'] = id;
    map['managedOwnerName'] = managedOwnerName;
    map['modificationTime'] = modificationTime;
    map['name'] = name;
    map['region'] = region;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    return map;
  }

  factory GetResolverFirewallDomainListResult.fromMap(
      Map<String, dynamic> map) {
    return GetResolverFirewallDomainListResult(
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as String,
      creatorRequestId: map['creatorRequestId'] as String,
      domainCount: map['domainCount'] as int,
      firewallDomainListId: map['firewallDomainListId'] as String,
      id: map['id'] as String,
      managedOwnerName: map['managedOwnerName'] as String,
      modificationTime: map['modificationTime'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}
