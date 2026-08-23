// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_schema_reference_response.dart';

/// Defines the asset status dataset properties.
class AssetStatusDatasetResponse {
  /// The message schema reference object.
  final pulumi.Input<MessageSchemaReferenceResponse> messageSchemaReference;
  /// The name of the dataset. Must be unique within the status.datasets array. This name is used to correlate between the spec and status dataset information.
  final pulumi.Input<String> name;

  /// Creates a new [AssetStatusDatasetResponse].
  /// [messageSchemaReference] The message schema reference object.
  /// [name] The name of the dataset. Must be unique within the status.datasets array. This name is used to correlate between the spec and status dataset information.
  const AssetStatusDatasetResponse({
    required this.messageSchemaReference,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageSchemaReference': pulumi.Input.mapInputValue<MessageSchemaReferenceResponse, Map<String, dynamic>>(messageSchemaReference, (value) => value.toMap()),
      'name': name,
    };
  }

  factory AssetStatusDatasetResponse.fromMap(Map<String, dynamic> map) {
    return AssetStatusDatasetResponse(
      messageSchemaReference: pulumi.Input.fromValue(MessageSchemaReferenceResponse.fromMap((map['messageSchemaReference']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
