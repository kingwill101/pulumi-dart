// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_name.dart';

/// The resource model definition representing SKU
class Sku {
  /// The name of the Azure Health Bot SKU
  final pulumi.Input<SkuName> name;

  /// Creates a new [Sku].
  /// [name] The name of the Azure Health Bot SKU
  const Sku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': pulumi.Input.mapInputValue<SkuName, String>(name, (value) => value.wireValue),
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: pulumi.Input.fromValue(SkuName.fromValue(map['name']! as String)),
    );
  }
}

