// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Event Hub ingestion endpoint configuration
class IotEventHubIngestionEndpointConfigurationResponse {
  /// Consumer group of the event hub to connected to.
  final pulumi.Input<String>? consumerGroup;
  /// Event Hub name to connect to.
  final pulumi.Input<String>? eventHubName;
  /// Fully qualified namespace of the Event Hub to connect to.
  final pulumi.Input<String>? fullyQualifiedEventHubNamespace;

  /// Creates a new [IotEventHubIngestionEndpointConfigurationResponse].
  /// [consumerGroup] Consumer group of the event hub to connected to.
  /// [eventHubName] Event Hub name to connect to.
  /// [fullyQualifiedEventHubNamespace] Fully qualified namespace of the Event Hub to connect to.
  IotEventHubIngestionEndpointConfigurationResponse({
    this.consumerGroup,
    this.eventHubName,
    this.fullyQualifiedEventHubNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroup': ?consumerGroup,
      'eventHubName': ?eventHubName,
      'fullyQualifiedEventHubNamespace': ?fullyQualifiedEventHubNamespace,
    };
  }

  factory IotEventHubIngestionEndpointConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IotEventHubIngestionEndpointConfigurationResponse(
      consumerGroup: map['consumerGroup'] == null ? null : (map['consumerGroup'] as String).input(),
      eventHubName: map['eventHubName'] == null ? null : (map['eventHubName'] as String).input(),
      fullyQualifiedEventHubNamespace: map['fullyQualifiedEventHubNamespace'] == null ? null : (map['fullyQualifiedEventHubNamespace'] as String).input(),
    );
  }
}

