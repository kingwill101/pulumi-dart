// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hsm_sku_name.dart';

/// SKU details
class ManagedHsmSku {
  /// SKU Family of the managed HSM Pool
  final pulumi.Input<String> family;
  /// SKU of the managed HSM Pool
  final pulumi.Input<ManagedHsmSkuName> name;

  /// Creates a new [ManagedHsmSku].
  /// [family] SKU Family of the managed HSM Pool
  /// [name] SKU of the managed HSM Pool
  const ManagedHsmSku({
    required this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': pulumi.Input.mapInputValue<ManagedHsmSkuName, String>(name, (value) => value.wireValue),
    };
  }

  factory ManagedHsmSku.fromMap(Map<String, dynamic> map) {
    return ManagedHsmSku(
      family: pulumi.Input.fromValue(map['family'] as String),
      name: pulumi.Input.fromValue(ManagedHsmSkuName.fromValue(map['name']! as String)),
    );
  }
}
