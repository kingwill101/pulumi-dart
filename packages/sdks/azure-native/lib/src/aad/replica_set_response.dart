// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_alert_response.dart';
import 'health_monitor_response.dart';

/// Replica Set Definition
class ReplicaSetResponse {
  /// List of Domain Controller IP Address
  final List<String> domainControllerIpAddress;
  /// External access ip address.
  final String externalAccessIpAddress;
  /// List of Domain Health Alerts
  final List<HealthAlertResponse> healthAlerts;
  /// Last domain evaluation run DateTime
  final String healthLastEvaluated;
  /// List of Domain Health Monitors
  final List<HealthMonitorResponse> healthMonitors;
  /// Virtual network location
  final String? location;
  /// ReplicaSet Id
  final String replicaSetId;
  /// Status of Domain Service instance
  final String serviceStatus;
  /// The name of the virtual network that Domain Services will be deployed on. The id of the subnet that Domain Services will be deployed on. /virtualNetwork/vnetName/subnets/subnetName.
  final String? subnetId;
  /// Virtual network site id
  final String vnetSiteId;

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
  ReplicaSetResponse({
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
      'healthAlerts': pulumi.Input.encodeList<HealthAlertResponse, Map<String, dynamic>>(healthAlerts, (value) => value.toMap()),
      'healthLastEvaluated': healthLastEvaluated,
      'healthMonitors': pulumi.Input.encodeList<HealthMonitorResponse, Map<String, dynamic>>(healthMonitors, (value) => value.toMap()),
      'location': ?location,
      'replicaSetId': replicaSetId,
      'serviceStatus': serviceStatus,
      'subnetId': ?subnetId,
      'vnetSiteId': vnetSiteId,
    };
  }

  factory ReplicaSetResponse.fromMap(Map<String, dynamic> map) {
    return ReplicaSetResponse(
      domainControllerIpAddress: (map['domainControllerIpAddress'] as List).cast<String>(),
      externalAccessIpAddress: map['externalAccessIpAddress'] as String,
      healthAlerts: pulumi.Input.decodeList<HealthAlertResponse>(map['healthAlerts'], (value) => HealthAlertResponse.fromMap((value as Map).cast<String, dynamic>())),
      healthLastEvaluated: map['healthLastEvaluated'] as String,
      healthMonitors: pulumi.Input.decodeList<HealthMonitorResponse>(map['healthMonitors'], (value) => HealthMonitorResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      replicaSetId: map['replicaSetId'] as String,
      serviceStatus: map['serviceStatus'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      vnetSiteId: map['vnetSiteId'] as String,
    );
  }
}

