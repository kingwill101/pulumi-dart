// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_field.dart';
import 'json_field_with_default.dart';

/// This enables publishing to Event Grid using a custom input schema. This can be used to map properties from a custom input JSON schema to the Event Grid event schema.
class JsonInputSchemaMapping {
  /// The mapping information for the DataVersion property of the Event Grid Event.
  final pulumi.Input<JsonFieldWithDefault>? dataVersion;
  /// The mapping information for the EventTime property of the Event Grid Event.
  final pulumi.Input<JsonField>? eventTime;
  /// The mapping information for the EventType property of the Event Grid Event.
  final pulumi.Input<JsonFieldWithDefault>? eventType;
  /// The mapping information for the Id property of the Event Grid Event.
  final pulumi.Input<JsonField>? id;
  /// Type of the custom mapping
  /// Expected value is 'Json'.
  final pulumi.Input<String> inputSchemaMappingType;
  /// The mapping information for the Subject property of the Event Grid Event.
  final pulumi.Input<JsonFieldWithDefault>? subject;
  /// The mapping information for the Topic property of the Event Grid Event.
  final pulumi.Input<JsonField>? topic;

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
      'dataVersion': ?pulumi.Input.mapOptionalInputValue<JsonFieldWithDefault, Map<String, dynamic>>(dataVersion, (value) => value.toMap()),
      'eventTime': ?pulumi.Input.mapOptionalInputValue<JsonField, Map<String, dynamic>>(eventTime, (value) => value.toMap()),
      'eventType': ?pulumi.Input.mapOptionalInputValue<JsonFieldWithDefault, Map<String, dynamic>>(eventType, (value) => value.toMap()),
      'id': ?pulumi.Input.mapOptionalInputValue<JsonField, Map<String, dynamic>>(id, (value) => value.toMap()),
      'inputSchemaMappingType': inputSchemaMappingType,
      'subject': ?pulumi.Input.mapOptionalInputValue<JsonFieldWithDefault, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'topic': ?pulumi.Input.mapOptionalInputValue<JsonField, Map<String, dynamic>>(topic, (value) => value.toMap()),
    };
  }

  factory JsonInputSchemaMapping.fromMap(Map<String, dynamic> map) {
    return JsonInputSchemaMapping(
      dataVersion: (() { final guardedValue = map['dataVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonFieldWithDefault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventTime: (() { final guardedValue = map['eventTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonFieldWithDefault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputSchemaMappingType: pulumi.Input.fromValue(map['inputSchemaMappingType'] as String),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonFieldWithDefault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

