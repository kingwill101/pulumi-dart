// ignore_for_file: unused_element, unnecessary_cast

import 'external_ref_category2.dart';

/// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
class ExternalRef2 {
  /// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
  final ExternalRefCategory2? category;

  /// Human-readable information about the purpose and target of the reference
  final String? comment;

  /// The unique string with no spaces necessary to access the package-specific information, metadata, or content within the target location
  final String? locator;

  /// Type of category (e.g. 'npm' for the PACKAGE_MANAGER category)
  final String? type;

  ExternalRef2({
    this.category,
    this.comment,
    this.locator,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoryValue = category;
    if (categoryValue != null) {
      map['category'] = categoryValue.value;
    }
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final locatorValue = locator;
    if (locatorValue != null) {
      map['locator'] = locatorValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ExternalRef2.fromMap(Map<String, dynamic> map) {
    return ExternalRef2(
      category: map['category'] == null
          ? null
          : ExternalRefCategory2.fromValue(map['category'] as String),
      comment: map['comment'] == null ? null : map['comment'] as String,
      locator: map['locator'] == null ? null : map['locator'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
