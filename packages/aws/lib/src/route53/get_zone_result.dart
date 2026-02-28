// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getZone.
class GetZoneResult {
  /// ARN of the Hosted Zone.
  final String arn;

  /// Caller Reference of the Hosted Zone.
  final String callerReference;

  /// Comment field of the Hosted Zone.
  final String comment;

  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone.
  final bool? enableAcceleratedRecovery;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The description provided by the service that created the Hosted Zone (e.g., `arn:aws:servicediscovery:us-east-1:1234567890:namespace/ns-xxxxxxxxxxxxxxxx`).
  final String linkedServiceDescription;

  /// The service that created the Hosted Zone (e.g., `servicediscovery.amazonaws.com`).
  final String linkedServicePrincipal;

  /// The Hosted Zone name.
  final String name;

  /// List of DNS name servers for the Hosted Zone.
  final List<String> nameServers;

  /// The Route 53 name server that created the SOA record.
  final String primaryNameServer;

  /// Indicates whether this is a private hosted zone.
  final bool? privateZone;

  /// The number of Record Set in the Hosted Zone.
  final int resourceRecordSetCount;

  /// A map of tags assigned to the Hosted Zone.
  final Map<String, String> tags;
  final String? vpcId;

  /// The Hosted Zone identifier.
  final String zoneId;

  /// Creates a new [GetZoneResult].
  /// [arn] ARN of the Hosted Zone.
  /// [callerReference] Caller Reference of the Hosted Zone.
  /// [comment] Comment field of the Hosted Zone.
  /// [enableAcceleratedRecovery] Boolean to indicate whether to enable accelerated recovery for the hosted zone.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [linkedServiceDescription] The description provided by the service that created the Hosted Zone (e.g., `arn:aws:servicediscovery:us-east-1:1234567890:namespace/ns-xxxxxxxxxxxxxxxx`).
  /// [linkedServicePrincipal] The service that created the Hosted Zone (e.g., `servicediscovery.amazonaws.com`).
  /// [name] The Hosted Zone name.
  /// [nameServers] List of DNS name servers for the Hosted Zone.
  /// [primaryNameServer] The Route 53 name server that created the SOA record.
  /// [privateZone] Indicates whether this is a private hosted zone.
  /// [resourceRecordSetCount] The number of Record Set in the Hosted Zone.
  /// [tags] A map of tags assigned to the Hosted Zone.
  /// [vpcId] Optional.
  /// [zoneId] The Hosted Zone identifier.
  GetZoneResult({
    required this.arn,
    required this.callerReference,
    required this.comment,
    this.enableAcceleratedRecovery,
    required this.id,
    required this.linkedServiceDescription,
    required this.linkedServicePrincipal,
    required this.name,
    required this.nameServers,
    required this.primaryNameServer,
    this.privateZone,
    required this.resourceRecordSetCount,
    required this.tags,
    this.vpcId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['callerReference'] = callerReference;
    map['comment'] = comment;
    final enableAcceleratedRecoveryValue = enableAcceleratedRecovery;
    if (enableAcceleratedRecoveryValue != null) {
      map['enableAcceleratedRecovery'] = enableAcceleratedRecoveryValue;
    }
    map['id'] = id;
    map['linkedServiceDescription'] = linkedServiceDescription;
    map['linkedServicePrincipal'] = linkedServicePrincipal;
    map['name'] = name;
    map['nameServers'] = nameServers;
    map['primaryNameServer'] = primaryNameServer;
    final privateZoneValue = privateZone;
    if (privateZoneValue != null) {
      map['privateZone'] = privateZoneValue;
    }
    map['resourceRecordSetCount'] = resourceRecordSetCount;
    map['tags'] = tags;
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    map['zoneId'] = zoneId;
    return map;
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      arn: map['arn'] as String,
      callerReference: map['callerReference'] as String,
      comment: map['comment'] as String,
      enableAcceleratedRecovery: map['enableAcceleratedRecovery'] == null
          ? null
          : map['enableAcceleratedRecovery'] as bool,
      id: map['id'] as String,
      linkedServiceDescription: map['linkedServiceDescription'] as String,
      linkedServicePrincipal: map['linkedServicePrincipal'] as String,
      name: map['name'] as String,
      nameServers: (map['nameServers'] as List).cast<String>(),
      primaryNameServer: map['primaryNameServer'] as String,
      privateZone:
          map['privateZone'] == null ? null : map['privateZone'] as bool,
      resourceRecordSetCount: map['resourceRecordSetCount'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}
