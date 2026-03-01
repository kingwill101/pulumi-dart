// ignore_for_file: unused_element, unnecessary_cast

import 'external_ref_category.dart';

/// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
class ExternalRef {
  /// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
  final ExternalRefCategory? category;

  /// Human-readable information about the purpose and target of the reference
  final String? comment;

  /// The unique string with no spaces necessary to access the package-specific information, metadata, or content within the target location
  final String? locator;

  /// Type of category (e.g. 'npm' for the PACKAGE_MANAGER category)
  final String? type;

  /// Creates a new [ExternalRef].
  /// [category] An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
  /// [comment] Human-readable information about the purpose and target of the reference
  /// [locator] The unique string with no spaces necessary to access the package-specific information, metadata, or content within the target location
  /// [type] Type of category (e.g. 'npm' for the PACKAGE_MANAGER category)
  ExternalRef({this.category, this.comment, this.locator, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category == null ? null : category!.value,
      'comment': ?comment,
      'locator': ?locator,
      'type': ?type,
    };
  }

  factory ExternalRef.fromMap(Map<String, dynamic> map) {
    return ExternalRef(
      category: map['category'] == null
          ? null
          : ExternalRefCategory.fromValue(map['category'] as String),
      comment: map['comment'] == null ? null : map['comment'] as String,
      locator: map['locator'] == null ? null : map['locator'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
