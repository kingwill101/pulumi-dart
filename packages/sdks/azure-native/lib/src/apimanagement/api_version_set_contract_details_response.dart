// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An API Version Set contains the common configuration for a set of API Versions relating
class ApiVersionSetContractDetailsResponse {
  /// Description of API Version Set.
  final pulumi.Input<String>? description;
  /// Identifier for existing API Version Set. Omit this value to create a new Version Set.
  final pulumi.Input<String>? id;
  /// The display Name of the API Version Set.
  final pulumi.Input<String>? name;
  /// Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  final pulumi.Input<String>? versionHeaderName;
  /// Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  final pulumi.Input<String>? versionQueryName;
  /// An value that determines where the API Version identifier will be located in a HTTP request.
  final pulumi.Input<String>? versioningScheme;

  /// Creates a new [ApiVersionSetContractDetailsResponse].
  /// [description] Description of API Version Set.
  /// [id] Identifier for existing API Version Set. Omit this value to create a new Version Set.
  /// [name] The display Name of the API Version Set.
  /// [versionHeaderName] Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  /// [versionQueryName] Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  /// [versioningScheme] An value that determines where the API Version identifier will be located in a HTTP request.
  ApiVersionSetContractDetailsResponse({
    this.description,
    this.id,
    this.name,
    this.versionHeaderName,
    this.versionQueryName,
    this.versioningScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versioningScheme': ?versioningScheme,
    };
  }

  factory ApiVersionSetContractDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ApiVersionSetContractDetailsResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      versionHeaderName: map['versionHeaderName'] == null ? null : (map['versionHeaderName'] as String).input(),
      versionQueryName: map['versionQueryName'] == null ? null : (map['versionQueryName'] as String).input(),
      versioningScheme: map['versioningScheme'] == null ? null : (map['versioningScheme'] as String).input(),
    );
  }
}

