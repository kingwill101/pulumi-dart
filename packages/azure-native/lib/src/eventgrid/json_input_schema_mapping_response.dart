// ignore_for_file: unused_element, unnecessary_cast

import 'json_field_response.dart';
import 'json_field_with_default_response.dart';

/// This enables publishing to Event Grid using a custom input schema. This can be used to map properties from a custom input JSON schema to the Event Grid event schema.
class JsonInputSchemaMappingResponse {
  /// The mapping information for the DataVersion property of the Event Grid Event.
  final JsonFieldWithDefaultResponse? dataVersion;
  /// The mapping information for the EventTime property of the Event Grid Event.
  final JsonFieldResponse? eventTime;
  /// The mapping information for the EventType property of the Event Grid Event.
  final JsonFieldWithDefaultResponse? eventType;
  /// The mapping information for the Id property of the Event Grid Event.
  final JsonFieldResponse? id;
  /// Type of the custom mapping
  /// Expected value is 'Json'.
  final String inputSchemaMappingType;
  /// The mapping information for the Subject property of the Event Grid Event.
  final JsonFieldWithDefaultResponse? subject;
  /// The mapping information for the Topic property of the Event Grid Event.
  final JsonFieldResponse? topic;

  /// Creates a new [JsonInputSchemaMappingResponse].
  /// [dataVersion] The mapping information for the DataVersion property of the Event Grid Event.
  /// [eventTime] The mapping information for the EventTime property of the Event Grid Event.
  /// [eventType] The mapping information for the EventType property of the Event Grid Event.
  /// [id] The mapping information for the Id property of the Event Grid Event.
  /// [inputSchemaMappingType] Type of the custom mapping
  /// [subject] The mapping information for the Subject property of the Event Grid Event.
  /// [topic] The mapping information for the Topic property of the Event Grid Event.
  JsonInputSchemaMappingResponse({
    this.dataVersion,
    this.eventTime,
    this.eventType,
    this.id,
    required this.inputSchemaMappingType,
    this.subject,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataVersion': ?dataVersion == null ? null : dataVersion!.toMap(),
      'eventTime': ?eventTime == null ? null : eventTime!.toMap(),
      'eventType': ?eventType == null ? null : eventType!.toMap(),
      'id': ?id == null ? null : id!.toMap(),
      'inputSchemaMappingType': inputSchemaMappingType,
      'subject': ?subject == null ? null : subject!.toMap(),
      'topic': ?topic == null ? null : topic!.toMap(),
    };
  }

  factory JsonInputSchemaMappingResponse.fromMap(Map<String, dynamic> map) {
    return JsonInputSchemaMappingResponse(
      dataVersion: map['dataVersion'] == null ? null : JsonFieldWithDefaultResponse.fromMap((map['dataVersion'] as Map).cast<String, dynamic>()),
      eventTime: map['eventTime'] == null ? null : JsonFieldResponse.fromMap((map['eventTime'] as Map).cast<String, dynamic>()),
      eventType: map['eventType'] == null ? null : JsonFieldWithDefaultResponse.fromMap((map['eventType'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : JsonFieldResponse.fromMap((map['id'] as Map).cast<String, dynamic>()),
      inputSchemaMappingType: map['inputSchemaMappingType'] as String,
      subject: map['subject'] == null ? null : JsonFieldWithDefaultResponse.fromMap((map['subject'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : JsonFieldResponse.fromMap((map['topic'] as Map).cast<String, dynamic>()),
    );
  }
}

