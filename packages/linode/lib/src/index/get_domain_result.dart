// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomain.
class GetDomainResult {
  /// The list of IPs that may perform a zone transfer for this Domain.
  final List<String> axfrIps;
  /// A description for this Domain.
  final String description;
  /// The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain
  final String? domain;
  /// The amount of time in seconds that may pass before this Domain is no longer authoritative.
  final int expireSec;
  /// The group this Domain belongs to.
  final String group;
  /// The unique ID of this Domain.
  final int? id;
  /// The IP addresses representing the master DNS for this Domain.
  final List<String> masterIps;
  /// The amount of time in seconds before this Domain should be refreshed.
  final int refreshSec;
  /// The interval, in seconds, at which a failed refresh should be retried.
  final int retrySec;
  /// Start of Authority email address.
  final String soaEmail;
  /// Used to control whether this Domain is currently being rendered. (`disabled`, `active`)
  final String status;
  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  /// 'Time to Live'-the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers.
  final int ttlSec;
  /// If this Domain represents the authoritative source of information for the domain it describes, or if it is a read-only copy of a master (also called a slave) (`master`, `slave`)
  final String type;

  /// Creates a new [GetDomainResult].
  /// [axfrIps] The list of IPs that may perform a zone transfer for this Domain.
  /// [description] A description for this Domain.
  /// [domain] The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain
  /// [expireSec] The amount of time in seconds that may pass before this Domain is no longer authoritative.
  /// [group] The group this Domain belongs to.
  /// [id] The unique ID of this Domain.
  /// [masterIps] The IP addresses representing the master DNS for this Domain.
  /// [refreshSec] The amount of time in seconds before this Domain should be refreshed.
  /// [retrySec] The interval, in seconds, at which a failed refresh should be retried.
  /// [soaEmail] Start of Authority email address.
  /// [status] Used to control whether this Domain is currently being rendered. (`disabled`, `active`)
  /// [tags] An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [ttlSec] 'Time to Live'-the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers.
  /// [type] If this Domain represents the authoritative source of information for the domain it describes, or if it is a read-only copy of a master (also called a slave) (`master`, `slave`)
  GetDomainResult({
    required this.axfrIps,
    required this.description,
    this.domain,
    required this.expireSec,
    required this.group,
    this.id,
    required this.masterIps,
    required this.refreshSec,
    required this.retrySec,
    required this.soaEmail,
    required this.status,
    required this.tags,
    required this.ttlSec,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'axfrIps': axfrIps,
      'description': description,
      'domain': ?domain,
      'expireSec': expireSec,
      'group': group,
      'id': ?id,
      'masterIps': masterIps,
      'refreshSec': refreshSec,
      'retrySec': retrySec,
      'soaEmail': soaEmail,
      'status': status,
      'tags': tags,
      'ttlSec': ttlSec,
      'type': type,
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      axfrIps: (map['axfrIps'] as List).cast<String>(),
      description: map['description'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      expireSec: map['expireSec'] as int,
      group: map['group'] as String,
      id: map['id'] == null ? null : map['id'] as int,
      masterIps: (map['masterIps'] as List).cast<String>(),
      refreshSec: map['refreshSec'] as int,
      retrySec: map['retrySec'] as int,
      soaEmail: map['soaEmail'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      ttlSec: map['ttlSec'] as int,
      type: map['type'] as String,
    );
  }
}

