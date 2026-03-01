// ignore_for_file: unused_element, unnecessary_cast

/// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
class ExternalRefResponse {
  /// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
  final String category;

  /// Human-readable information about the purpose and target of the reference
  final String comment;

  /// The unique string with no spaces necessary to access the package-specific information, metadata, or content within the target location
  final String locator;

  /// Type of category (e.g. 'npm' for the PACKAGE_MANAGER category)
  final String type;

  /// Creates a new [ExternalRefResponse].
  /// [category] An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
  /// [comment] Human-readable information about the purpose and target of the reference
  /// [locator] The unique string with no spaces necessary to access the package-specific information, metadata, or content within the target location
  /// [type] Type of category (e.g. 'npm' for the PACKAGE_MANAGER category)
  ExternalRefResponse({
    required this.category,
    required this.comment,
    required this.locator,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'comment': comment,
      'locator': locator,
      'type': type,
    };
  }

  factory ExternalRefResponse.fromMap(Map<String, dynamic> map) {
    return ExternalRefResponse(
      category: map['category'] as String,
      comment: map['comment'] as String,
      locator: map['locator'] as String,
      type: map['type'] as String,
    );
  }
}
