// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_definition_response.dart';

/// Result data returned by getConnectionType.
class GetConnectionTypeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the creation time.
  final String creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets the field definitions of the connection type.
  final Map<String, FieldDefinitionResponse> fieldDefinitions;
  /// Gets the id of the resource.
  final String id;
  /// Gets or sets a Boolean value to indicate if the connection type is global.
  final bool? isGlobal;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// Gets the name of the connection type.
  final String name;
  /// Resource type
  final String type;

  /// Creates a new [GetConnectionTypeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets the creation time.
  /// [description] Gets or sets the description.
  /// [fieldDefinitions] Gets the field definitions of the connection type.
  /// [id] Gets the id of the resource.
  /// [isGlobal] Gets or sets a Boolean value to indicate if the connection type is global.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [name] Gets the name of the connection type.
  /// [type] Resource type
  GetConnectionTypeResult({
    required this.azureApiVersion,
    required this.creationTime,
    this.description,
    required this.fieldDefinitions,
    required this.id,
    this.isGlobal,
    this.lastModifiedTime,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'description': ?description,
      'fieldDefinitions': pulumi.Input.encodeMapValues<FieldDefinitionResponse, Map<String, dynamic>>(fieldDefinitions, (value) => value.toMap()),
      'id': id,
      'isGlobal': ?isGlobal,
      'lastModifiedTime': ?lastModifiedTime,
      'name': name,
      'type': type,
    };
  }

  factory GetConnectionTypeResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionTypeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      fieldDefinitions: pulumi.Input.decodeMapValues<FieldDefinitionResponse>(map['fieldDefinitions'], (value) => FieldDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      isGlobal: map['isGlobal'] == null ? null : map['isGlobal'] as bool,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

