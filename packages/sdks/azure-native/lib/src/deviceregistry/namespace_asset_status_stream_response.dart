// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_message_schema_reference_response.dart';
import 'status_error_response.dart';

/// Defines the asset status stream properties.
class NamespaceAssetStatusStreamResponse {
  /// Object to transfer and persist errors that originate from the edge.
  final pulumi.Input<StatusErrorResponse> error;
  /// The message schema reference object.
  final pulumi.Input<NamespaceMessageSchemaReferenceResponse> messageSchemaReference;
  /// The name of the stream. Must be unique within the status.streams array. This name is used to correlate between the spec and status event information.
  final pulumi.Input<String> name;

  /// Creates a new [NamespaceAssetStatusStreamResponse].
  /// [error] Object to transfer and persist errors that originate from the edge.
  /// [messageSchemaReference] The message schema reference object.
  /// [name] The name of the stream. Must be unique within the status.streams array. This name is used to correlate between the spec and status event information.
  const NamespaceAssetStatusStreamResponse({
    required this.error,
    required this.messageSchemaReference,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<StatusErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'messageSchemaReference': pulumi.Input.mapInputValue<NamespaceMessageSchemaReferenceResponse, Map<String, dynamic>>(messageSchemaReference, (value) => value.toMap()),
      'name': name,
    };
  }

  factory NamespaceAssetStatusStreamResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceAssetStatusStreamResponse(
      error: pulumi.Input.fromValue(StatusErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      messageSchemaReference: pulumi.Input.fromValue(NamespaceMessageSchemaReferenceResponse.fromMap((map['messageSchemaReference']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
