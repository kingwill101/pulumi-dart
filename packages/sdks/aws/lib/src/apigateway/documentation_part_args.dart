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
    required pulumi.Output<DocumentationPartLocation> location,
    required pulumi.Output<String> properties,
    pulumi.Output<String>? region,
    required pulumi.Output<String> restApiId,
  }) :
      location = pulumi.Input.asInput<DocumentationPartLocation>(location),
      properties = pulumi.Input.asInput<String>(properties),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApiId = pulumi.Input.asInput<String>(restApiId);

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
      location: pulumi.Output.create<DocumentationPartLocation>(DocumentationPartLocation.fromMap((map['location'] as Map).cast<String, dynamic>())),
      properties: pulumi.Output.create<String>(map['properties'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApiId: pulumi.Output.create<String>(map['restApiId'] as String),
    );
  }
}

