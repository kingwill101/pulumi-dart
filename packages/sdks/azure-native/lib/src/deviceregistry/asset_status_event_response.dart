// ignore_for_file: unused_element, unnecessary_cast

import 'message_schema_reference_response.dart';

/// Defines the asset status event properties.
class AssetStatusEventResponse {
  /// The message schema reference object.
  final MessageSchemaReferenceResponse messageSchemaReference;
  /// The name of the event. Must be unique within the status.events array. This name is used to correlate between the spec and status event information.
  final String name;

  /// Creates a new [AssetStatusEventResponse].
  /// [messageSchemaReference] The message schema reference object.
  /// [name] The name of the event. Must be unique within the status.events array. This name is used to correlate between the spec and status event information.
  AssetStatusEventResponse({
    required this.messageSchemaReference,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageSchemaReference': messageSchemaReference.toMap(),
      'name': name,
    };
  }

  factory AssetStatusEventResponse.fromMap(Map<String, dynamic> map) {
    return AssetStatusEventResponse(
      messageSchemaReference: MessageSchemaReferenceResponse.fromMap((map['messageSchemaReference'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

