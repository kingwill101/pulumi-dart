// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../documentation_part_location/documentation_part_location.dart';

/// The set of arguments for DocumentationPart.
class DocumentationPartArgs {
  /// Location of the targeted API entity of the to-be-created documentation part. See below.
  final Input<DocumentationPartLocation> location;

  /// Content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., "{ \"description\": \"The API does ...\" }". Only Swagger-compliant key-value pairs can be exported and, hence, published.
  final Input<String> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the associated Rest API
  final Input<String> restApiId;

  DocumentationPartArgs({
    required this.location,
    required this.properties,
    this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] =
        Input.mapInputValue<DocumentationPartLocation, Map<String, dynamic>>(
            location, (value) => value.toMap());
    map['properties'] = properties;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApiId'] = restApiId;
    return map;
  }

  factory DocumentationPartArgs.fromMap(Map<String, dynamic> map) {
    return DocumentationPartArgs(
      location: Input.asInput<DocumentationPartLocation>(map['location']),
      properties: Input.asInput<String>(map['properties']),
      region: Input.asOptionalInput<String>(map['region']),
      restApiId: Input.asInput<String>(map['restApiId']),
    );
  }
}
