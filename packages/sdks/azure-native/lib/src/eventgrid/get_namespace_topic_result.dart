// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNamespaceTopic.
class GetNamespaceTopicResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Event retention for the namespace topic expressed in days. The property default value is 1 day.
  /// Min event retention duration value is 1 day and max event retention duration value is 1 day.
  final int? eventRetentionInDays;
  /// Fully qualified identifier of the resource.
  final String id;
  /// This determines the format that is expected for incoming events published to the topic.
  final String? inputSchema;
  /// Name of the resource.
  final String name;
  /// Provisioning state of the namespace topic.
  final String provisioningState;
  /// Publisher type of the namespace topic.
  final String? publisherType;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetNamespaceTopicResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eventRetentionInDays] Event retention for the namespace topic expressed in days. The property default value is 1 day.
  /// [id] Fully qualified identifier of the resource.
  /// [inputSchema] This determines the format that is expected for incoming events published to the topic.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the namespace topic.
  /// [publisherType] Publisher type of the namespace topic.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [type] Type of the resource.
  const GetNamespaceTopicResult({
    required this.azureApiVersion,
    this.eventRetentionInDays,
    required this.id,
    this.inputSchema,
    required this.name,
    required this.provisioningState,
    this.publisherType,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eventRetentionInDays': ?eventRetentionInDays,
      'id': id,
      'inputSchema': ?inputSchema,
      'name': name,
      'provisioningState': provisioningState,
      'publisherType': ?publisherType,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetNamespaceTopicResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceTopicResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eventRetentionInDays: (() { final guardedValue = map['eventRetentionInDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      id: map['id'] as String,
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publisherType: (() { final guardedValue = map['publisherType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
