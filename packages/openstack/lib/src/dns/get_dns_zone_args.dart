// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_dns_zone_get_dns_zone_args_doc}
/// Arguments for getDnsZone.
/// {@endtemplate}
/// {@macro pulumi_dns_get_dns_zone_get_dns_zone_args_doc}
class GetDnsZoneArgs {
  /// Try to obtain zone ID by listing all projects
  /// (requires admin role by default, depends on your policy configuration)
  final pulumi.Input<String>? allProjects;
  /// Attributes of the DNS Service scheduler.
  final pulumi.Input<Map<String, String>>? attributes;
  /// The time the zone was created.
  final pulumi.Input<String>? createdAt;
  /// A description of the zone.
  final pulumi.Input<String>? description;
  /// The email contact for the zone record.
  final pulumi.Input<String>? email;
  /// An array of master DNS servers. When `type` is  `SECONDARY`.
  final pulumi.Input<List<String>>? masters;
  /// The name of the zone.
  final pulumi.Input<String>? name;
  /// The ID of the pool hosting the zone.
  final pulumi.Input<String>? poolId;
  /// The ID of the project the DNS zone is obtained from,
  /// sets `X-Auth-Sudo-Tenant-ID` header (requires an assigned user role in target project)
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 DNS client.
  /// A DNS client is needed to retrieve zone ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The serial number of the zone.
  final pulumi.Input<int>? serial;
  /// The zone's status.
  final pulumi.Input<String>? status;
  /// The time the zone was transferred.
  final pulumi.Input<String>? transferredAt;
  /// The time to live (TTL) of the zone.
  final pulumi.Input<int>? ttl;
  /// The type of the zone. Can either be `PRIMARY` or `SECONDARY`.
  final pulumi.Input<String>? type;
  /// The time the zone was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The version of the zone.
  final pulumi.Input<int>? version;

  /// Creates a new [GetDnsZoneArgs].
  /// [allProjects] Try to obtain zone ID by listing all projects
  /// [attributes] Attributes of the DNS Service scheduler.
  /// [createdAt] The time the zone was created.
  /// [description] A description of the zone.
  /// [email] The email contact for the zone record.
  /// [masters] An array of master DNS servers. When `type` is  `SECONDARY`.
  /// [name] The name of the zone.
  /// [poolId] The ID of the pool hosting the zone.
  /// [projectId] The ID of the project the DNS zone is obtained from,
  /// [region] The region in which to obtain the V2 DNS client.
  /// [serial] The serial number of the zone.
  /// [status] The zone's status.
  /// [transferredAt] The time the zone was transferred.
  /// [ttl] The time to live (TTL) of the zone.
  /// [type] The type of the zone. Can either be `PRIMARY` or `SECONDARY`.
  /// [updatedAt] The time the zone was last updated.
  /// [version] The version of the zone.
  GetDnsZoneArgs({
    String? allProjects,
    Map<String, String>? attributes,
    String? createdAt,
    String? description,
    String? email,
    List<String>? masters,
    String? name,
    String? poolId,
    String? projectId,
    String? region,
    int? serial,
    String? status,
    String? transferredAt,
    int? ttl,
    String? type,
    String? updatedAt,
    int? version,
  }) :
      allProjects = pulumi.Input.asOptionalInput<String>(allProjects),
      attributes = pulumi.Input.asOptionalInput<Map<String, String>>(attributes),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      email = pulumi.Input.asOptionalInput<String>(email),
      masters = pulumi.Input.asOptionalInput<List<String>>(masters),
      name = pulumi.Input.asOptionalInput<String>(name),
      poolId = pulumi.Input.asOptionalInput<String>(poolId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      serial = pulumi.Input.asOptionalInput<int>(serial),
      status = pulumi.Input.asOptionalInput<String>(status),
      transferredAt = pulumi.Input.asOptionalInput<String>(transferredAt),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asOptionalInput<String>(type),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allProjects': ?allProjects,
      'attributes': ?attributes,
      'createdAt': ?createdAt,
      'description': ?description,
      'email': ?email,
      'masters': ?masters,
      'name': ?name,
      'poolId': ?poolId,
      'projectId': ?projectId,
      'region': ?region,
      'serial': ?serial,
      'status': ?status,
      'transferredAt': ?transferredAt,
      'ttl': ?ttl,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory GetDnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneArgs(
      allProjects: map['allProjects'] == null ? null : map['allProjects'] as String,
      attributes: map['attributes'] == null ? null : (map['attributes'] as Map).cast<String, String>(),
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      masters: map['masters'] == null ? null : (map['masters'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      poolId: map['poolId'] == null ? null : map['poolId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serial: map['serial'] == null ? null : map['serial'] as int,
      status: map['status'] == null ? null : map['status'] as String,
      transferredAt: map['transferredAt'] == null ? null : map['transferredAt'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}

