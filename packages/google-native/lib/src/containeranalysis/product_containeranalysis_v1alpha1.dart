// ignore_for_file: unused_element, unnecessary_cast

import 'identifier_helper.dart';

/// Product contains information about a product and how to uniquely identify it.
class ProductContaineranalysisV1alpha1 {
  /// Token that identifies a product so that it can be referred to from other parts in the document. There is no predefined format as long as it uniquely identifies a group in the context of the current document.
  final String? id;

  /// Helps in identifying the underlying product.
  final IdentifierHelper? identifierHelper;

  /// Name of the product.
  final String? name;

  /// Creates a new [ProductContaineranalysisV1alpha1].
  /// [id] Token that identifies a product so that it can be referred to from other parts in the document. There is no predefined format as long as it uniquely identifies a group in the context of the current document.
  /// [identifierHelper] Helps in identifying the underlying product.
  /// [name] Name of the product.
  ProductContaineranalysisV1alpha1({
    this.id,
    this.identifierHelper,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final identifierHelperValue = identifierHelper;
    if (identifierHelperValue != null) {
      map['identifierHelper'] = identifierHelperValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ProductContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ProductContaineranalysisV1alpha1(
      id: map['id'] == null ? null : map['id'] as String,
      identifierHelper: map['identifierHelper'] == null
          ? null
          : IdentifierHelper.fromMap(
              (map['identifierHelper'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
