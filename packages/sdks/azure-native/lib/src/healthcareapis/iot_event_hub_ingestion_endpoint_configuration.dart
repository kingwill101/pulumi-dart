// ignore_for_file: unused_element, unnecessary_cast


/// Event Hub ingestion endpoint configuration
class IotEventHubIngestionEndpointConfiguration {
  /// Consumer group of the event hub to connected to.
  final String? consumerGroup;
  /// Event Hub name to connect to.
  final String? eventHubName;
  /// Fully qualified namespace of the Event Hub to connect to.
  final String? fullyQualifiedEventHubNamespace;

  /// Creates a new [IotEventHubIngestionEndpointConfiguration].
  /// [consumerGroup] Consumer group of the event hub to connected to.
  /// [eventHubName] Event Hub name to connect to.
  /// [fullyQualifiedEventHubNamespace] Fully qualified namespace of the Event Hub to connect to.
  IotEventHubIngestionEndpointConfiguration({
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

  factory IotEventHubIngestionEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return IotEventHubIngestionEndpointConfiguration(
      consumerGroup: map['consumerGroup'] == null ? null : map['consumerGroup'] as String,
      eventHubName: map['eventHubName'] == null ? null : map['eventHubName'] as String,
      fullyQualifiedEventHubNamespace: map['fullyQualifiedEventHubNamespace'] == null ? null : map['fullyQualifiedEventHubNamespace'] as String,
    );
  }
}

