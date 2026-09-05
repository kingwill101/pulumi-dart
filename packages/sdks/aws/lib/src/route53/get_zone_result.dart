// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZone.
class GetZoneResult {
  /// ARN of the Hosted Zone.
  final String? arn;
  /// Caller Reference of the Hosted Zone.
  final String? callerReference;
  /// Comment field of the Hosted Zone.
  final String? comment;
  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone.
  final bool? enableAcceleratedRecovery;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The description provided by the service that created the Hosted Zone (e.g., `arn:aws:servicediscovery:us-east-1:1234567890:namespace/ns-xxxxxxxxxxxxxxxx`).
  final String? linkedServiceDescription;
  /// The service that created the Hosted Zone (e.g., `servicediscovery.amazonaws.com`).
  final String? linkedServicePrincipal;
  /// The Hosted Zone name.
  final String? name;
  /// List of DNS name servers for the Hosted Zone.
  final List<String>? nameServers;
  /// The Route 53 name server that created the SOA record.
  final String? primaryNameServer;
  /// Indicates whether this is a private hosted zone.
  final bool? privateZone;
  /// The number of Record Set in the Hosted Zone.
  final int? resourceRecordSetCount;
  /// A map of tags assigned to the Hosted Zone.
  final Map<String, String>? tags;
  final String? vpcId;
  /// The Hosted Zone identifier.
  final String? zoneId;

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
  const GetZoneResult({
    this.arn,
    this.callerReference,
    this.comment,
    this.enableAcceleratedRecovery,
    this.id,
    this.linkedServiceDescription,
    this.linkedServicePrincipal,
    this.name,
    this.nameServers,
    this.primaryNameServer,
    this.privateZone,
    this.resourceRecordSetCount,
    this.tags,
    this.vpcId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'callerReference': ?callerReference,
      'comment': ?comment,
      'enableAcceleratedRecovery': ?enableAcceleratedRecovery,
      'id': ?id,
      'linkedServiceDescription': ?linkedServiceDescription,
      'linkedServicePrincipal': ?linkedServicePrincipal,
      'name': ?name,
      'nameServers': ?nameServers,
      'primaryNameServer': ?primaryNameServer,
      'privateZone': ?privateZone,
      'resourceRecordSetCount': ?resourceRecordSetCount,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      callerReference: (() { final guardedValue = map['callerReference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableAcceleratedRecovery: (() { final guardedValue = map['enableAcceleratedRecovery']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedServiceDescription: (() { final guardedValue = map['linkedServiceDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedServicePrincipal: (() { final guardedValue = map['linkedServicePrincipal']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      primaryNameServer: (() { final guardedValue = map['primaryNameServer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateZone: (() { final guardedValue = map['privateZone']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceRecordSetCount: (() { final guardedValue = map['resourceRecordSetCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
