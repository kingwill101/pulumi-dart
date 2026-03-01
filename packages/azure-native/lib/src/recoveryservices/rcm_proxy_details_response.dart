// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// RCM proxy details.
class RcmProxyDetailsResponse {
  /// The RCM proxy Bios Id.
  final String biosId;
  /// The client authentication type.
  final String clientAuthenticationType;
  /// The fabric object Id.
  final String fabricObjectId;
  /// The RCM proxy Fqdn.
  final String fqdn;
  /// The health of the RCM proxy.
  final String health;
  /// The health errors.
  final List<HealthErrorResponse> healthErrors;
  /// The RCM proxy Id.
  final String id;
  /// The last heartbeat received from the RCM proxy.
  final String lastHeartbeatUtc;
  /// The RCM proxy name.
  final String name;
  /// The version.
  final String version;

  /// Creates a new [RcmProxyDetailsResponse].
  /// [biosId] The RCM proxy Bios Id.
  /// [clientAuthenticationType] The client authentication type.
  /// [fabricObjectId] The fabric object Id.
  /// [fqdn] The RCM proxy Fqdn.
  /// [health] The health of the RCM proxy.
  /// [healthErrors] The health errors.
  /// [id] The RCM proxy Id.
  /// [lastHeartbeatUtc] The last heartbeat received from the RCM proxy.
  /// [name] The RCM proxy name.
  /// [version] The version.
  RcmProxyDetailsResponse({
    required this.biosId,
    required this.clientAuthenticationType,
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
      'clientAuthenticationType': clientAuthenticationType,
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

  factory RcmProxyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RcmProxyDetailsResponse(
      biosId: map['biosId'] as String,
      clientAuthenticationType: map['clientAuthenticationType'] as String,
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

