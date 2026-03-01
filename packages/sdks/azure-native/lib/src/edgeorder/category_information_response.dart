// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_response.dart';

/// Category related properties of a child configuration.
class CategoryInformationResponse {
  /// Category display name of the child configuration.
  final String? categoryDisplayName;
  /// Category name of the child configuration.
  final String? categoryName;
  /// Description text for the category.
  final String? description;
  /// Links for the category.
  final List<LinkResponse>? links;

  /// Creates a new [CategoryInformationResponse].
  /// [categoryDisplayName] Category display name of the child configuration.
  /// [categoryName] Category name of the child configuration.
  /// [description] Description text for the category.
  /// [links] Links for the category.
  CategoryInformationResponse({
    this.categoryDisplayName,
    this.categoryName,
    this.description,
    this.links,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryDisplayName': ?categoryDisplayName,
      'categoryName': ?categoryName,
      'description': ?description,
      'links': ?links == null ? null : pulumi.Input.encodeList<LinkResponse, Map<String, dynamic>>(links!, (value) => value.toMap()),
    };
  }

  factory CategoryInformationResponse.fromMap(Map<String, dynamic> map) {
    return CategoryInformationResponse(
      categoryDisplayName: map['categoryDisplayName'] == null ? null : map['categoryDisplayName'] as String,
      categoryName: map['categoryName'] == null ? null : map['categoryName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      links: map['links'] == null ? null : pulumi.Input.decodeList<LinkResponse>(map['links'], (value) => LinkResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

