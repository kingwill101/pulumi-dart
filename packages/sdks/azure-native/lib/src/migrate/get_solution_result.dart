// ignore_for_file: unused_element, unnecessary_cast

import 'solution_properties_response.dart';

/// Result data returned by getSolution.
class GetSolutionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the ETAG for optimistic concurrency control.
  final String? etag;
  /// Gets the relative URL to get to this REST resource.
  final String id;
  /// Gets the name of this REST resource.
  final String name;
  /// Gets or sets the properties of the solution.
  final SolutionPropertiesResponse properties;
  /// Gets the type of this REST resource.
  final String type;

  /// Creates a new [GetSolutionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Gets or sets the ETAG for optimistic concurrency control.
  /// [id] Gets the relative URL to get to this REST resource.
  /// [name] Gets the name of this REST resource.
  /// [properties] Gets or sets the properties of the solution.
  /// [type] Gets the type of this REST resource.
  const GetSolutionResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetSolutionResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      properties: SolutionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
