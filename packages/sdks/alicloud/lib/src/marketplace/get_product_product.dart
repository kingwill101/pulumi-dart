// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_product_skus.dart';

class GetProductProduct {
  /// The code of the product.
  final pulumi.Input<String> code;

  /// The description of the product.
  final pulumi.Input<String> description;

  /// The name of the product.
  final pulumi.Input<String> name;

  /// A list of one element containing sku attributes of an object. Each element contains the following attributes:
  final pulumi.Input<List<GetProductProductSkus>> skuses;

  /// Creates a new [GetProductProduct].
  /// [code] The code of the product.
  /// [description] The description of the product.
  /// [name] The name of the product.
  /// [skuses] A list of one element containing sku attributes of an object. Each element contains the following attributes:
  GetProductProduct({
    required this.code,
    required this.description,
    required this.name,
    required this.skuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
      'name': name,
      'skuses':
          pulumi.Input.mapInputValue<
            List<GetProductProductSkus>,
            List<Map<String, dynamic>>
          >(
            skuses,
            (value) =>
                pulumi.Input.encodeList<
                  GetProductProductSkus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetProductProduct.fromMap(Map<String, dynamic> map) {
    return GetProductProduct(
      code: pulumi.Input.fromValue(map['code'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      skuses: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetProductProductSkus>(
          map['skuses']!,
          (value) => GetProductProductSkus.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
