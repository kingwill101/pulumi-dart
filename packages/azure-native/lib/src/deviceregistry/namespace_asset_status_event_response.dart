// ignore_for_file: unused_element, unnecessary_cast

import 'namespace_message_schema_reference_response.dart';
import 'status_error_response.dart';

/// Defines the asset status event properties.
class NamespaceAssetStatusEventResponse {
  /// Object to transfer and persist errors that originate from the edge.
  final StatusErrorResponse error;
  /// The message schema reference object.
  final NamespaceMessageSchemaReferenceResponse messageSchemaReference;
  /// The name of the event. Must be unique within the status.events array. This name is used to correlate between the spec and status event information.
  final String name;

  /// Creates a new [NamespaceAssetStatusEventResponse].
  /// [error] Object to transfer and persist errors that originate from the edge.
  /// [messageSchemaReference] The message schema reference object.
  /// [name] The name of the event. Must be unique within the status.events array. This name is used to correlate between the spec and status event information.
  NamespaceAssetStatusEventResponse({
    required this.error,
    required this.messageSchemaReference,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'messageSchemaReference': messageSchemaReference.toMap(),
      'name': name,
    };
  }

  factory NamespaceAssetStatusEventResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceAssetStatusEventResponse(
      error: StatusErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      messageSchemaReference: NamespaceMessageSchemaReferenceResponse.fromMap((map['messageSchemaReference'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

