// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_response.dart';

/// Description related properties of a product system.
class DescriptionResponse {
  /// Attributes for the product system.
  final pulumi.Input<List<String>> attributes;

  /// Type of description.
  final pulumi.Input<String> descriptionType;

  /// Keywords for the product system.
  final pulumi.Input<List<String>> keywords;

  /// Links for the product system.
  final pulumi.Input<List<LinkResponse>> links;

  /// Long description of the product system.
  final pulumi.Input<String> longDescription;

  /// Short description of the product system.
  final pulumi.Input<String> shortDescription;

  /// Creates a new [DescriptionResponse].
  /// [attributes] Attributes for the product system.
  /// [descriptionType] Type of description.
  /// [keywords] Keywords for the product system.
  /// [links] Links for the product system.
  /// [longDescription] Long description of the product system.
  /// [shortDescription] Short description of the product system.
  DescriptionResponse({
    required this.attributes,
    required this.descriptionType,
    required this.keywords,
    required this.links,
    required this.longDescription,
    required this.shortDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'descriptionType': descriptionType,
      'keywords': keywords,
      'links':
          pulumi.Input.mapInputValue<
            List<LinkResponse>,
            List<Map<String, dynamic>>
          >(
            links,
            (value) =>
                pulumi.Input.encodeList<LinkResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'longDescription': longDescription,
      'shortDescription': shortDescription,
    };
  }

  factory DescriptionResponse.fromMap(Map<String, dynamic> map) {
    return DescriptionResponse(
      attributes: pulumi.Input.fromValue(
        (map['attributes'] as List).cast<String>(),
      ),
      descriptionType: pulumi.Input.fromValue(map['descriptionType'] as String),
      keywords: pulumi.Input.fromValue(
        (map['keywords'] as List).cast<String>(),
      ),
      links: pulumi.Input.fromValue(
        pulumi.Input.decodeList<LinkResponse>(
          map['links']!,
          (value) =>
              LinkResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      longDescription: pulumi.Input.fromValue(map['longDescription'] as String),
      shortDescription: pulumi.Input.fromValue(
        map['shortDescription'] as String,
      ),
    );
  }
}
