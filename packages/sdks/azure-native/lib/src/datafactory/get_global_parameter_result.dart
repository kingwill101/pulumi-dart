// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_parameter_specification_response.dart';

/// Result data returned by getGlobalParameter.
class GetGlobalParameterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Etag identifies change in the resource.
  final String etag;

  /// The resource identifier.
  final String id;

  /// The resource name.
  final String name;

  /// Properties of the global parameter.
  final Map<String, GlobalParameterSpecificationResponse> properties;

  /// The resource type.
  final String type;

  /// Creates a new [GetGlobalParameterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Etag identifies change in the resource.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [properties] Properties of the global parameter.
  /// [type] The resource type.
  GetGlobalParameterResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'properties':
          pulumi.Input.encodeMapValues<
            GlobalParameterSpecificationResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetGlobalParameterResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalParameterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties:
          pulumi.Input.decodeMapValues<GlobalParameterSpecificationResponse>(
            map['properties']!,
            (value) => GlobalParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      type: map['type'] as String,
    );
  }
}
