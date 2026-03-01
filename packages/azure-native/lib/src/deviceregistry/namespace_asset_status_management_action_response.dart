// ignore_for_file: unused_element, unnecessary_cast

import 'namespace_message_schema_reference_response.dart';
import 'status_error_response.dart';

/// Defines the asset status action properties.
class NamespaceAssetStatusManagementActionResponse {
  /// Object to transfer and persist errors that originate from the edge.
  final StatusErrorResponse error;
  /// The name of the action. Must be unique within the status.actions array. This name is used to correlate between the spec and status event information.
  final String name;
  /// The request message schema reference object for the action.
  final NamespaceMessageSchemaReferenceResponse requestMessageSchemaReference;
  /// The response message schema reference object for the action.
  final NamespaceMessageSchemaReferenceResponse responseMessageSchemaReference;

  /// Creates a new [NamespaceAssetStatusManagementActionResponse].
  /// [error] Object to transfer and persist errors that originate from the edge.
  /// [name] The name of the action. Must be unique within the status.actions array. This name is used to correlate between the spec and status event information.
  /// [requestMessageSchemaReference] The request message schema reference object for the action.
  /// [responseMessageSchemaReference] The response message schema reference object for the action.
  NamespaceAssetStatusManagementActionResponse({
    required this.error,
    required this.name,
    required this.requestMessageSchemaReference,
    required this.responseMessageSchemaReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'name': name,
      'requestMessageSchemaReference': requestMessageSchemaReference.toMap(),
      'responseMessageSchemaReference': responseMessageSchemaReference.toMap(),
    };
  }

  factory NamespaceAssetStatusManagementActionResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceAssetStatusManagementActionResponse(
      error: StatusErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      requestMessageSchemaReference: NamespaceMessageSchemaReferenceResponse.fromMap((map['requestMessageSchemaReference'] as Map).cast<String, dynamic>()),
      responseMessageSchemaReference: NamespaceMessageSchemaReferenceResponse.fromMap((map['responseMessageSchemaReference'] as Map).cast<String, dynamic>()),
    );
  }
}

