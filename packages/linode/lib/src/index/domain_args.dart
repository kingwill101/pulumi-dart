// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_index_domain_domain_args_doc}
class DomainArgs {
  /// The list of IPs that may perform a zone transfer for this Domain. This is potentially dangerous, and should be set to an empty list unless you intend to use it.
  final pulumi.Input<List<String>>? axfrIps;
  /// A description for this Domain. This is for display purposes only.
  final pulumi.Input<String>? description;
  /// The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain.
  final pulumi.Input<String> domain;
  /// The amount of time in seconds that may pass before this Domain is no longer authoritative. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  final pulumi.Input<int>? expireSec;
  /// The group this Domain belongs to. This is for display purposes only.
  final pulumi.Input<String>? group;
  /// The IP addresses representing the master DNS for this Domain.
  ///
  /// - - -
  final pulumi.Input<List<String>>? masterIps;
  /// The amount of time in seconds before this Domain should be refreshed. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  final pulumi.Input<int>? refreshSec;
  /// The interval, in seconds, at which a failed refresh should be retried. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  final pulumi.Input<int>? retrySec;
  /// Start of Authority email address. This is required for master Domains.
  final pulumi.Input<String>? soaEmail;
  /// Used to control whether this Domain is currently being rendered (defaults to "active").
  final pulumi.Input<String>? status;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  /// 'Time to Live' - the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  final pulumi.Input<int>? ttlSec;
  /// If this Domain represents the authoritative source of information for the domain it describes, or if it is a read-only copy of a master (also called a slave).
  final pulumi.Input<String> type;

  /// Creates a new [DomainArgs].
  /// [axfrIps] The list of IPs that may perform a zone transfer for this Domain. This is potentially dangerous, and should be set to an empty list unless you intend to use it.
  /// [description] A description for this Domain. This is for display purposes only.
  /// [domain] The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain.
  /// [expireSec] The amount of time in seconds that may pass before this Domain is no longer authoritative. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  /// [group] The group this Domain belongs to. This is for display purposes only.
  /// [masterIps] The IP addresses representing the master DNS for this Domain.
  /// [refreshSec] The amount of time in seconds before this Domain should be refreshed. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  /// [retrySec] The interval, in seconds, at which a failed refresh should be retried. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  /// [soaEmail] Start of Authority email address. This is required for master Domains.
  /// [status] Used to control whether this Domain is currently being rendered (defaults to "active").
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [ttlSec] 'Time to Live' - the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  /// [type] If this Domain represents the authoritative source of information for the domain it describes, or if it is a read-only copy of a master (also called a slave).
  DomainArgs({
    List<String>? axfrIps,
    String? description,
    required String domain,
    int? expireSec,
    String? group,
    List<String>? masterIps,
    int? refreshSec,
    int? retrySec,
    String? soaEmail,
    String? status,
    List<String>? tags,
    int? ttlSec,
    required String type,
  }) :
      axfrIps = pulumi.Input.asOptionalInput<List<String>>(axfrIps),
      description = pulumi.Input.asOptionalInput<String>(description),
      domain = pulumi.Input.asInput<String>(domain),
      expireSec = pulumi.Input.asOptionalInput<int>(expireSec),
      group = pulumi.Input.asOptionalInput<String>(group),
      masterIps = pulumi.Input.asOptionalInput<List<String>>(masterIps),
      refreshSec = pulumi.Input.asOptionalInput<int>(refreshSec),
      retrySec = pulumi.Input.asOptionalInput<int>(retrySec),
      soaEmail = pulumi.Input.asOptionalInput<String>(soaEmail),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      ttlSec = pulumi.Input.asOptionalInput<int>(ttlSec),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'axfrIps': ?axfrIps,
      'description': ?description,
      'domain': domain,
      'expireSec': ?expireSec,
      'group': ?group,
      'masterIps': ?masterIps,
      'refreshSec': ?refreshSec,
      'retrySec': ?retrySec,
      'soaEmail': ?soaEmail,
      'status': ?status,
      'tags': ?tags,
      'ttlSec': ?ttlSec,
      'type': type,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      axfrIps: map['axfrIps'] == null ? null : (map['axfrIps'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      domain: map['domain'] as String,
      expireSec: map['expireSec'] == null ? null : map['expireSec'] as int,
      group: map['group'] == null ? null : map['group'] as String,
      masterIps: map['masterIps'] == null ? null : (map['masterIps'] as List).cast<String>(),
      refreshSec: map['refreshSec'] == null ? null : map['refreshSec'] as int,
      retrySec: map['retrySec'] == null ? null : map['retrySec'] as int,
      soaEmail: map['soaEmail'] == null ? null : map['soaEmail'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      ttlSec: map['ttlSec'] == null ? null : map['ttlSec'] as int,
      type: map['type'] as String,
    );
  }
}

