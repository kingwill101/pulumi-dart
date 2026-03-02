// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'documentation_part_location.dart';

/// {@template pulumi_apigateway_documentation_part_documentation_part_args_doc}
/// The set of arguments for DocumentationPart.
/// {@endtemplate}
/// {@macro pulumi_apigateway_documentation_part_documentation_part_args_doc}
class DocumentationPartArgs {
  /// Location of the targeted API entity of the to-be-created documentation part. See below.
  final pulumi.Input<DocumentationPartLocation> location;
  /// Content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., "{ \"description\": \"The API does ...\" }". Only Swagger-compliant key-value pairs can be exported and, hence, published.
  final pulumi.Input<String> properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated Rest API
  final pulumi.Input<String> restApiId;

  /// Creates a new [DocumentationPartArgs].
  /// [location] Location of the targeted API entity of the to-be-created documentation part. See below.
  /// [properties] Content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., "{ \"description\": \"The API does ...\" }". Only Swagger-compliant key-value pairs can be exported and, hence, published.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] ID of the associated Rest API
  DocumentationPartArgs({
    required this.location,
    required this.properties,
    this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': pulumi.Input.mapInputValue<DocumentationPartLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'properties': properties,
      'region': ?region,
      'restApiId': restApiId,
    };
  }

  factory DocumentationPartArgs.fromMap(Map<String, dynamic> map) {
    return DocumentationPartArgs(
      location: (DocumentationPartLocation.fromMap((map['location'] as Map).cast<String, dynamic>())).input(),
      properties: (map['properties'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      restApiId: (map['restApiId'] as String).input(),
    );
  }
}

