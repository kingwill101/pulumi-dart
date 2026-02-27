// ignore_for_file: unused_element, unnecessary_cast

import 'identifier_helper_response.dart';

/// Product contains information about a product and how to uniquely identify it.
class ProductResponseContaineranalysisV1alpha1 {
  /// Helps in identifying the underlying product.
  final IdentifierHelperResponse identifierHelper;

  /// Name of the product.
  final String name;

  ProductResponseContaineranalysisV1alpha1({
    required this.identifierHelper,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifierHelper'] = identifierHelper.toMap();
    map['name'] = name;
    return map;
  }

  factory ProductResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ProductResponseContaineranalysisV1alpha1(
      identifierHelper: IdentifierHelperResponse.fromMap(
          (map['identifierHelper'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
