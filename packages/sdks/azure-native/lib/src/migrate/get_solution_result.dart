// ignore_for_file: unused_element, unnecessary_cast

import 'solution_properties_response.dart';

/// Result data returned by getSolution.
class GetSolutionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the ETAG for optimistic concurrency control.
  final String? etag;
  /// Gets the relative URL to get to this REST resource.
  final String? id;
  /// Gets the name of this REST resource.
  final String? name;
  /// Gets or sets the properties of the solution.
  final SolutionPropertiesResponse? properties;
  /// Gets the type of this REST resource.
  final String? type;

  /// Creates a new [GetSolutionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Gets or sets the ETAG for optimistic concurrency control.
  /// [id] Gets the relative URL to get to this REST resource.
  /// [name] Gets the name of this REST resource.
  /// [properties] Gets or sets the properties of the solution.
  /// [type] Gets the type of this REST resource.
  const GetSolutionResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetSolutionResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return SolutionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
