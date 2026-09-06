// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNamespaceTopic.
class GetNamespaceTopicResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Event retention for the namespace topic expressed in days. The property default value is 1 day.
  /// Min event retention duration value is 1 day and max event retention duration value is 1 day.
  final int? eventRetentionInDays;
  /// Fully qualified identifier of the resource.
  final String? id;
  /// This determines the format that is expected for incoming events published to the topic.
  final String? inputSchema;
  /// Name of the resource.
  final String? name;
  /// Provisioning state of the namespace topic.
  final String? provisioningState;
  /// Publisher type of the namespace topic.
  final String? publisherType;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse? systemData;
  /// Type of the resource.
  final String? type;

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
  GetNamespaceTopicResult({
    this.azureApiVersion,
    this.eventRetentionInDays,
    this.id,
    String? inputSchema,
    this.name,
    this.provisioningState,
    this.publisherType,
    this.systemData,
    this.type,
  }) : inputSchema = inputSchema ?? 'CloudEventSchemaV1_0';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'eventRetentionInDays': ?eventRetentionInDays,
      'id': ?id,
      'inputSchema': ?inputSchema,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'publisherType': ?publisherType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetNamespaceTopicResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceTopicResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventRetentionInDays: (() { final guardedValue = map['eventRetentionInDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisherType: (() { final guardedValue = map['publisherType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
