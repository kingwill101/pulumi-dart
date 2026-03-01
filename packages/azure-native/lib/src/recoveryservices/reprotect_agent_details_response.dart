// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// Reprotect agent details.
class ReprotectAgentDetailsResponse {
  /// The list of accessible datastores fetched from discovery.
  final List<String> accessibleDatastores;
  /// The reprotect agent Bios Id.
  final String biosId;
  /// The fabric object Id.
  final String fabricObjectId;
  /// The reprotect agent Fqdn.
  final String fqdn;
  /// The health of the reprotect agent.
  final String health;
  /// The health errors.
  final List<HealthErrorResponse> healthErrors;
  /// The reprotect agent Id.
  final String id;
  /// The last time when SDS information discovered in SRS.
  final String lastDiscoveryInUtc;
  /// The last heartbeat received from the reprotect agent.
  final String lastHeartbeatUtc;
  /// The reprotect agent name.
  final String name;
  /// The protected item count.
  final int protectedItemCount;
  /// The Vcenter Id.
  final String vcenterId;
  /// The version.
  final String version;

  /// Creates a new [ReprotectAgentDetailsResponse].
  /// [accessibleDatastores] The list of accessible datastores fetched from discovery.
  /// [biosId] The reprotect agent Bios Id.
  /// [fabricObjectId] The fabric object Id.
  /// [fqdn] The reprotect agent Fqdn.
  /// [health] The health of the reprotect agent.
  /// [healthErrors] The health errors.
  /// [id] The reprotect agent Id.
  /// [lastDiscoveryInUtc] The last time when SDS information discovered in SRS.
  /// [lastHeartbeatUtc] The last heartbeat received from the reprotect agent.
  /// [name] The reprotect agent name.
  /// [protectedItemCount] The protected item count.
  /// [vcenterId] The Vcenter Id.
  /// [version] The version.
  ReprotectAgentDetailsResponse({
    required this.accessibleDatastores,
    required this.biosId,
    required this.fabricObjectId,
    required this.fqdn,
    required this.health,
    required this.healthErrors,
    required this.id,
    required this.lastDiscoveryInUtc,
    required this.lastHeartbeatUtc,
    required this.name,
    required this.protectedItemCount,
    required this.vcenterId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibleDatastores': accessibleDatastores,
      'biosId': biosId,
      'fabricObjectId': fabricObjectId,
      'fqdn': fqdn,
      'health': health,
      'healthErrors': pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
      'id': id,
      'lastDiscoveryInUtc': lastDiscoveryInUtc,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'name': name,
      'protectedItemCount': protectedItemCount,
      'vcenterId': vcenterId,
      'version': version,
    };
  }

  factory ReprotectAgentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ReprotectAgentDetailsResponse(
      accessibleDatastores: (map['accessibleDatastores'] as List).cast<String>(),
      biosId: map['biosId'] as String,
      fabricObjectId: map['fabricObjectId'] as String,
      fqdn: map['fqdn'] as String,
      health: map['health'] as String,
      healthErrors: pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lastDiscoveryInUtc: map['lastDiscoveryInUtc'] as String,
      lastHeartbeatUtc: map['lastHeartbeatUtc'] as String,
      name: map['name'] as String,
      protectedItemCount: map['protectedItemCount'] as int,
      vcenterId: map['vcenterId'] as String,
      version: map['version'] as String,
    );
  }
}

