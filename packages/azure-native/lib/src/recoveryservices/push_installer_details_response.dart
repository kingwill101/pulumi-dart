// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// Push installer details.
class PushInstallerDetailsResponse {
  /// The push installer Bios Id.
  final String biosId;
  /// The fabric object Id.
  final String fabricObjectId;
  /// The push installer Fqdn.
  final String fqdn;
  /// The health of the push installer.
  final String health;
  /// The health errors.
  final List<HealthErrorResponse> healthErrors;
  /// The push installer Id.
  final String id;
  /// The last heartbeat received from the push installer.
  final String lastHeartbeatUtc;
  /// The push installer name.
  final String name;
  /// The version.
  final String version;

  /// Creates a new [PushInstallerDetailsResponse].
  /// [biosId] The push installer Bios Id.
  /// [fabricObjectId] The fabric object Id.
  /// [fqdn] The push installer Fqdn.
  /// [health] The health of the push installer.
  /// [healthErrors] The health errors.
  /// [id] The push installer Id.
  /// [lastHeartbeatUtc] The last heartbeat received from the push installer.
  /// [name] The push installer name.
  /// [version] The version.
  PushInstallerDetailsResponse({
    required this.biosId,
    required this.fabricObjectId,
    required this.fqdn,
    required this.health,
    required this.healthErrors,
    required this.id,
    required this.lastHeartbeatUtc,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biosId': biosId,
      'fabricObjectId': fabricObjectId,
      'fqdn': fqdn,
      'health': health,
      'healthErrors': pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
      'id': id,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'name': name,
      'version': version,
    };
  }

  factory PushInstallerDetailsResponse.fromMap(Map<String, dynamic> map) {
    return PushInstallerDetailsResponse(
      biosId: map['biosId'] as String,
      fabricObjectId: map['fabricObjectId'] as String,
      fqdn: map['fqdn'] as String,
      health: map['health'] as String,
      healthErrors: pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lastHeartbeatUtc: map['lastHeartbeatUtc'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

