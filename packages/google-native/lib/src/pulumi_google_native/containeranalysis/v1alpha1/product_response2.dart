// ignore_for_file: unused_element, unnecessary_cast

import 'identifier_helper_response.dart';

/// Product contains information about a product and how to uniquely identify it.
class ProductResponse2 {
  /// Helps in identifying the underlying product.
  final IdentifierHelperResponse identifierHelper;

  /// Name of the product.
  final String name;

  ProductResponse2({
    required this.identifierHelper,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifierHelper'] = identifierHelper.toMap();
    map['name'] = name;
    return map;
  }

  factory ProductResponse2.fromMap(Map<String, dynamic> map) {
    return ProductResponse2(
      identifierHelper: IdentifierHelperResponse.fromMap(
          (map['identifierHelper'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
