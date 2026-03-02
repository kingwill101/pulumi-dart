// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_field_response.dart';
import 'json_field_with_default_response.dart';

/// This enables publishing to Event Grid using a custom input schema. This can be used to map properties from a custom input JSON schema to the Event Grid event schema.
class JsonInputSchemaMappingResponse {
  /// The mapping information for the DataVersion property of the Event Grid Event.
  final pulumi.Input<JsonFieldWithDefaultResponse>? dataVersion;
  /// The mapping information for the EventTime property of the Event Grid Event.
  final pulumi.Input<JsonFieldResponse>? eventTime;
  /// The mapping information for the EventType property of the Event Grid Event.
  final pulumi.Input<JsonFieldWithDefaultResponse>? eventType;
  /// The mapping information for the Id property of the Event Grid Event.
  final pulumi.Input<JsonFieldResponse>? id;
  /// Type of the custom mapping
  /// Expected value is 'Json'.
  final pulumi.Input<String> inputSchemaMappingType;
  /// The mapping information for the Subject property of the Event Grid Event.
  final pulumi.Input<JsonFieldWithDefaultResponse>? subject;
  /// The mapping information for the Topic property of the Event Grid Event.
  final pulumi.Input<JsonFieldResponse>? topic;

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
      'dataVersion': ?pulumi.Input.mapOptionalInputValue<JsonFieldWithDefaultResponse, Map<String, dynamic>>(dataVersion, (value) => value.toMap()),
      'eventTime': ?pulumi.Input.mapOptionalInputValue<JsonFieldResponse, Map<String, dynamic>>(eventTime, (value) => value.toMap()),
      'eventType': ?pulumi.Input.mapOptionalInputValue<JsonFieldWithDefaultResponse, Map<String, dynamic>>(eventType, (value) => value.toMap()),
      'id': ?pulumi.Input.mapOptionalInputValue<JsonFieldResponse, Map<String, dynamic>>(id, (value) => value.toMap()),
      'inputSchemaMappingType': inputSchemaMappingType,
      'subject': ?pulumi.Input.mapOptionalInputValue<JsonFieldWithDefaultResponse, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'topic': ?pulumi.Input.mapOptionalInputValue<JsonFieldResponse, Map<String, dynamic>>(topic, (value) => value.toMap()),
    };
  }

  factory JsonInputSchemaMappingResponse.fromMap(Map<String, dynamic> map) {
    return JsonInputSchemaMappingResponse(
      dataVersion: map['dataVersion'] == null ? null : (JsonFieldWithDefaultResponse.fromMap((map['dataVersion']! as Map).cast<String, dynamic>())).input(),
      eventTime: map['eventTime'] == null ? null : (JsonFieldResponse.fromMap((map['eventTime']! as Map).cast<String, dynamic>())).input(),
      eventType: map['eventType'] == null ? null : (JsonFieldWithDefaultResponse.fromMap((map['eventType']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (JsonFieldResponse.fromMap((map['id']! as Map).cast<String, dynamic>())).input(),
      inputSchemaMappingType: (map['inputSchemaMappingType'] as String).input(),
      subject: map['subject'] == null ? null : (JsonFieldWithDefaultResponse.fromMap((map['subject']! as Map).cast<String, dynamic>())).input(),
      topic: map['topic'] == null ? null : (JsonFieldResponse.fromMap((map['topic']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

