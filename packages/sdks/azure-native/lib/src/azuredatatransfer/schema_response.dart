// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The schema object.
class SchemaResponse {
  /// Connection ID associated with this schema
  final pulumi.Input<String>? connectionId;
  /// Content of the schema
  final pulumi.Input<String>? content;
  /// The direction of the schema.
  final pulumi.Input<String>? direction;
  /// ID associated with this schema
  final pulumi.Input<String>? id;
  /// Name of the schema
  final pulumi.Input<String>? name;
  /// The Schema Type
  final pulumi.Input<String>? schemaType;
  /// Uri containing SAS token for the zipped schema
  final pulumi.Input<String>? schemaUri;
  /// Status of the schema
  final pulumi.Input<String>? status;

  /// Creates a new [SchemaResponse].
  /// [connectionId] Connection ID associated with this schema
  /// [content] Content of the schema
  /// [direction] The direction of the schema.
  /// [id] ID associated with this schema
  /// [name] Name of the schema
  /// [schemaType] The Schema Type
  /// [schemaUri] Uri containing SAS token for the zipped schema
  /// [status] Status of the schema
  const SchemaResponse({
    this.connectionId,
    this.content,
    this.direction,
    this.id,
    this.name,
    this.schemaType,
    this.schemaUri,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'content': ?content,
      'direction': ?direction,
      'id': ?id,
      'name': ?name,
      'schemaType': ?schemaType,
      'schemaUri': ?schemaUri,
      'status': ?status,
    };
  }

  factory SchemaResponse.fromMap(Map<String, dynamic> map) {
    return SchemaResponse(
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaUri: (() { final guardedValue = map['schemaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
