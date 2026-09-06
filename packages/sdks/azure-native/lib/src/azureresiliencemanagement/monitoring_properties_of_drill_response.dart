// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity_response.dart';

/// Drill monitoring properties.
class MonitoringPropertiesOfDrillResponse {
  /// Full ARM Id of the Data collection endpoint created by Resiliency service which will route data for service group and its resources.
  final pulumi.Input<String> dataCollectionEndpointId;
  /// Identity to use for Drill monitoring operations.
  final pulumi.Input<AssociatedIdentityResponse?>? identity;
  /// Full ARM Id of the Log analytics workspace created by Resiliency service where health data is collected.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// Full ARM Id of the Data collection rule created by Resiliency service which will route data for RAW health data for service group resources.
  final pulumi.Input<String> rawMetricsDataCollectionRuleId;
  /// Full ARM Id of the Data collection rule created by Resiliency service which will route data for Aggregate health data of service group.
  final pulumi.Input<String> serviceGroupMetricsDataCollectionRuleId;

  /// Creates a new [MonitoringPropertiesOfDrillResponse].
  /// [dataCollectionEndpointId] Full ARM Id of the Data collection endpoint created by Resiliency service which will route data for service group and its resources.
  /// [identity] Identity to use for Drill monitoring operations.
  /// [logAnalyticsWorkspaceId] Full ARM Id of the Log analytics workspace created by Resiliency service where health data is collected.
  /// [rawMetricsDataCollectionRuleId] Full ARM Id of the Data collection rule created by Resiliency service which will route data for RAW health data for service group resources.
  /// [serviceGroupMetricsDataCollectionRuleId] Full ARM Id of the Data collection rule created by Resiliency service which will route data for Aggregate health data of service group.
  const MonitoringPropertiesOfDrillResponse({
    required this.dataCollectionEndpointId,
    this.identity,
    required this.logAnalyticsWorkspaceId,
    required this.rawMetricsDataCollectionRuleId,
    required this.serviceGroupMetricsDataCollectionRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointId': dataCollectionEndpointId,
      'identity': ?pulumi.Input.mapOptionalInputValue<AssociatedIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'rawMetricsDataCollectionRuleId': rawMetricsDataCollectionRuleId,
      'serviceGroupMetricsDataCollectionRuleId': serviceGroupMetricsDataCollectionRuleId,
    };
  }

  factory MonitoringPropertiesOfDrillResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringPropertiesOfDrillResponse(
      dataCollectionEndpointId: pulumi.Input.fromValue(map['dataCollectionEndpointId'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssociatedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      rawMetricsDataCollectionRuleId: pulumi.Input.fromValue(map['rawMetricsDataCollectionRuleId'] as String),
      serviceGroupMetricsDataCollectionRuleId: pulumi.Input.fromValue(map['serviceGroupMetricsDataCollectionRuleId'] as String),
    );
  }
}
