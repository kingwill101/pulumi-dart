// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// vCenter properties.
class VCenterPropertiesResponse {
  /// The VCenter discovery status.
  final String? discoveryStatus;
  /// The ARM resource name of the fabric containing this VCenter.
  final String? fabricArmResourceName;
  /// Friendly name of the vCenter.
  final String? friendlyName;
  /// The health errors for this VCenter.
  final List<HealthErrorResponse>? healthErrors;
  /// The infrastructure Id of vCenter.
  final String? infrastructureId;
  /// VCenter internal ID.
  final String? internalId;
  /// The IP address of the vCenter.
  final String? ipAddress;
  /// The time when the last heartbeat was received by vCenter.
  final String? lastHeartbeat;
  /// The port number for discovery.
  final String? port;
  /// The process server Id.
  final String? processServerId;
  /// The account Id which has privileges to discover the vCenter.
  final String? runAsAccountId;

  /// Creates a new [VCenterPropertiesResponse].
  /// [discoveryStatus] The VCenter discovery status.
  /// [fabricArmResourceName] The ARM resource name of the fabric containing this VCenter.
  /// [friendlyName] Friendly name of the vCenter.
  /// [healthErrors] The health errors for this VCenter.
  /// [infrastructureId] The infrastructure Id of vCenter.
  /// [internalId] VCenter internal ID.
  /// [ipAddress] The IP address of the vCenter.
  /// [lastHeartbeat] The time when the last heartbeat was received by vCenter.
  /// [port] The port number for discovery.
  /// [processServerId] The process server Id.
  /// [runAsAccountId] The account Id which has privileges to discover the vCenter.
  VCenterPropertiesResponse({
    this.discoveryStatus,
    this.fabricArmResourceName,
    this.friendlyName,
    this.healthErrors,
    this.infrastructureId,
    this.internalId,
    this.ipAddress,
    this.lastHeartbeat,
    this.port,
    this.processServerId,
    this.runAsAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryStatus': ?discoveryStatus,
      'fabricArmResourceName': ?fabricArmResourceName,
      'friendlyName': ?friendlyName,
      'healthErrors': ?healthErrors == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors!, (value) => value.toMap()),
      'infrastructureId': ?infrastructureId,
      'internalId': ?internalId,
      'ipAddress': ?ipAddress,
      'lastHeartbeat': ?lastHeartbeat,
      'port': ?port,
      'processServerId': ?processServerId,
      'runAsAccountId': ?runAsAccountId,
    };
  }

  factory VCenterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VCenterPropertiesResponse(
      discoveryStatus: map['discoveryStatus'] == null ? null : map['discoveryStatus'] as String,
      fabricArmResourceName: map['fabricArmResourceName'] == null ? null : map['fabricArmResourceName'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      healthErrors: map['healthErrors'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      infrastructureId: map['infrastructureId'] == null ? null : map['infrastructureId'] as String,
      internalId: map['internalId'] == null ? null : map['internalId'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      lastHeartbeat: map['lastHeartbeat'] == null ? null : map['lastHeartbeat'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      processServerId: map['processServerId'] == null ? null : map['processServerId'] as String,
      runAsAccountId: map['runAsAccountId'] == null ? null : map['runAsAccountId'] as String,
    );
  }
}

