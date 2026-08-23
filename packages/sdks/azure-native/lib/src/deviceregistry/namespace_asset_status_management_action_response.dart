// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_message_schema_reference_response.dart';
import 'status_error_response.dart';

/// Defines the asset status action properties.
class NamespaceAssetStatusManagementActionResponse {
  /// Object to transfer and persist errors that originate from the edge.
  final pulumi.Input<StatusErrorResponse> error;
  /// The name of the action. Must be unique within the status.actions array. This name is used to correlate between the spec and status event information.
  final pulumi.Input<String> name;
  /// The request message schema reference object for the action.
  final pulumi.Input<NamespaceMessageSchemaReferenceResponse> requestMessageSchemaReference;
  /// The response message schema reference object for the action.
  final pulumi.Input<NamespaceMessageSchemaReferenceResponse> responseMessageSchemaReference;

  /// Creates a new [NamespaceAssetStatusManagementActionResponse].
  /// [error] Object to transfer and persist errors that originate from the edge.
  /// [name] The name of the action. Must be unique within the status.actions array. This name is used to correlate between the spec and status event information.
  /// [requestMessageSchemaReference] The request message schema reference object for the action.
  /// [responseMessageSchemaReference] The response message schema reference object for the action.
  const NamespaceAssetStatusManagementActionResponse({
    required this.error,
    required this.name,
    required this.requestMessageSchemaReference,
    required this.responseMessageSchemaReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<StatusErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'name': name,
      'requestMessageSchemaReference': pulumi.Input.mapInputValue<NamespaceMessageSchemaReferenceResponse, Map<String, dynamic>>(requestMessageSchemaReference, (value) => value.toMap()),
      'responseMessageSchemaReference': pulumi.Input.mapInputValue<NamespaceMessageSchemaReferenceResponse, Map<String, dynamic>>(responseMessageSchemaReference, (value) => value.toMap()),
    };
  }

  factory NamespaceAssetStatusManagementActionResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceAssetStatusManagementActionResponse(
      error: pulumi.Input.fromValue(StatusErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      requestMessageSchemaReference: pulumi.Input.fromValue(NamespaceMessageSchemaReferenceResponse.fromMap((map['requestMessageSchemaReference']! as Map).cast<String, dynamic>())),
      responseMessageSchemaReference: pulumi.Input.fromValue(NamespaceMessageSchemaReferenceResponse.fromMap((map['responseMessageSchemaReference']! as Map).cast<String, dynamic>())),
    );
  }
}
