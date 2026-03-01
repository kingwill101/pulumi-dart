// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_response.dart';

/// Description related properties of a product system.
class DescriptionResponse {
  /// Attributes for the product system.
  final List<String> attributes;
  /// Type of description.
  final String descriptionType;
  /// Keywords for the product system.
  final List<String> keywords;
  /// Links for the product system.
  final List<LinkResponse> links;
  /// Long description of the product system.
  final String longDescription;
  /// Short description of the product system.
  final String shortDescription;

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
      'links': pulumi.Input.encodeList<LinkResponse, Map<String, dynamic>>(links, (value) => value.toMap()),
      'longDescription': longDescription,
      'shortDescription': shortDescription,
    };
  }

  factory DescriptionResponse.fromMap(Map<String, dynamic> map) {
    return DescriptionResponse(
      attributes: (map['attributes'] as List).cast<String>(),
      descriptionType: map['descriptionType'] as String,
      keywords: (map['keywords'] as List).cast<String>(),
      links: pulumi.Input.decodeList<LinkResponse>(map['links'], (value) => LinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      longDescription: map['longDescription'] as String,
      shortDescription: map['shortDescription'] as String,
    );
  }
}

