// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_alert_response.dart';
import 'health_monitor_response.dart';

/// Replica Set Definition
class ReplicaSetResponse {
  /// List of Domain Controller IP Address
  final pulumi.Input<List<String>> domainControllerIpAddress;
  /// External access ip address.
  final pulumi.Input<String> externalAccessIpAddress;
  /// List of Domain Health Alerts
  final pulumi.Input<List<HealthAlertResponse>> healthAlerts;
  /// Last domain evaluation run DateTime
  final pulumi.Input<String> healthLastEvaluated;
  /// List of Domain Health Monitors
  final pulumi.Input<List<HealthMonitorResponse>> healthMonitors;
  /// Virtual network location
  final pulumi.Input<String>? location;
  /// ReplicaSet Id
  final pulumi.Input<String> replicaSetId;
  /// Status of Domain Service instance
  final pulumi.Input<String> serviceStatus;
  /// The name of the virtual network that Domain Services will be deployed on. The id of the subnet that Domain Services will be deployed on. /virtualNetwork/vnetName/subnets/subnetName.
  final pulumi.Input<String>? subnetId;
  /// Virtual network site id
  final pulumi.Input<String> vnetSiteId;

  /// Creates a new [ReplicaSetResponse].
  /// [domainControllerIpAddress] List of Domain Controller IP Address
  /// [externalAccessIpAddress] External access ip address.
  /// [healthAlerts] List of Domain Health Alerts
  /// [healthLastEvaluated] Last domain evaluation run DateTime
  /// [healthMonitors] List of Domain Health Monitors
  /// [location] Virtual network location
  /// [replicaSetId] ReplicaSet Id
  /// [serviceStatus] Status of Domain Service instance
  /// [subnetId] The name of the virtual network that Domain Services will be deployed on. The id of the subnet that Domain Services will be deployed on. /virtualNetwork/vnetName/subnets/subnetName.
  /// [vnetSiteId] Virtual network site id
  const ReplicaSetResponse({
    required this.domainControllerIpAddress,
    required this.externalAccessIpAddress,
    required this.healthAlerts,
    required this.healthLastEvaluated,
    required this.healthMonitors,
    this.location,
    required this.replicaSetId,
    required this.serviceStatus,
    this.subnetId,
    required this.vnetSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainControllerIpAddress': domainControllerIpAddress,
      'externalAccessIpAddress': externalAccessIpAddress,
      'healthAlerts': pulumi.Input.mapInputValue<List<HealthAlertResponse>, List<Map<String, dynamic>>>(healthAlerts, (value) => pulumi.Input.encodeList<HealthAlertResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthLastEvaluated': healthLastEvaluated,
      'healthMonitors': pulumi.Input.mapInputValue<List<HealthMonitorResponse>, List<Map<String, dynamic>>>(healthMonitors, (value) => pulumi.Input.encodeList<HealthMonitorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'replicaSetId': replicaSetId,
      'serviceStatus': serviceStatus,
      'subnetId': ?subnetId,
      'vnetSiteId': vnetSiteId,
    };
  }

  factory ReplicaSetResponse.fromMap(Map<String, dynamic> map) {
    return ReplicaSetResponse(
      domainControllerIpAddress: pulumi.Input.fromValue((map['domainControllerIpAddress'] as List).cast<String>()),
      externalAccessIpAddress: pulumi.Input.fromValue(map['externalAccessIpAddress'] as String),
      healthAlerts: pulumi.Input.fromValue(pulumi.Input.decodeList<HealthAlertResponse>(map['healthAlerts']!, (value) => HealthAlertResponse.fromMap((value as Map).cast<String, dynamic>()))),
      healthLastEvaluated: pulumi.Input.fromValue(map['healthLastEvaluated'] as String),
      healthMonitors: pulumi.Input.fromValue(pulumi.Input.decodeList<HealthMonitorResponse>(map['healthMonitors']!, (value) => HealthMonitorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaSetId: pulumi.Input.fromValue(map['replicaSetId'] as String),
      serviceStatus: pulumi.Input.fromValue(map['serviceStatus'] as String),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetSiteId: pulumi.Input.fromValue(map['vnetSiteId'] as String),
    );
  }
}
