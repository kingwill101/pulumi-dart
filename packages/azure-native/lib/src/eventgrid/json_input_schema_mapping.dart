// ignore_for_file: unused_element, unnecessary_cast

import 'json_field.dart';
import 'json_field_with_default.dart';

/// This enables publishing to Event Grid using a custom input schema. This can be used to map properties from a custom input JSON schema to the Event Grid event schema.
class JsonInputSchemaMapping {
  /// The mapping information for the DataVersion property of the Event Grid Event.
  final JsonFieldWithDefault? dataVersion;
  /// The mapping information for the EventTime property of the Event Grid Event.
  final JsonField? eventTime;
  /// The mapping information for the EventType property of the Event Grid Event.
  final JsonFieldWithDefault? eventType;
  /// The mapping information for the Id property of the Event Grid Event.
  final JsonField? id;
  /// Type of the custom mapping
  /// Expected value is 'Json'.
  final String inputSchemaMappingType;
  /// The mapping information for the Subject property of the Event Grid Event.
  final JsonFieldWithDefault? subject;
  /// The mapping information for the Topic property of the Event Grid Event.
  final JsonField? topic;

  /// Creates a new [JsonInputSchemaMapping].
  /// [dataVersion] The mapping information for the DataVersion property of the Event Grid Event.
  /// [eventTime] The mapping information for the EventTime property of the Event Grid Event.
  /// [eventType] The mapping information for the EventType property of the Event Grid Event.
  /// [id] The mapping information for the Id property of the Event Grid Event.
  /// [inputSchemaMappingType] Type of the custom mapping
  /// [subject] The mapping information for the Subject property of the Event Grid Event.
  /// [topic] The mapping information for the Topic property of the Event Grid Event.
  JsonInputSchemaMapping({
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

  factory JsonInputSchemaMapping.fromMap(Map<String, dynamic> map) {
    return JsonInputSchemaMapping(
      dataVersion: map['dataVersion'] == null ? null : JsonFieldWithDefault.fromMap((map['dataVersion'] as Map).cast<String, dynamic>()),
      eventTime: map['eventTime'] == null ? null : JsonField.fromMap((map['eventTime'] as Map).cast<String, dynamic>()),
      eventType: map['eventType'] == null ? null : JsonFieldWithDefault.fromMap((map['eventType'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : JsonField.fromMap((map['id'] as Map).cast<String, dynamic>()),
      inputSchemaMappingType: map['inputSchemaMappingType'] as String,
      subject: map['subject'] == null ? null : JsonFieldWithDefault.fromMap((map['subject'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : JsonField.fromMap((map['topic'] as Map).cast<String, dynamic>()),
    );
  }
}

