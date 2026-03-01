// ignore_for_file: unused_element, unnecessary_cast

import 'managed_hsm_sku_name.dart';

/// SKU details
class ManagedHsmSku {
  /// SKU Family of the managed HSM Pool
  final String family;
  /// SKU of the managed HSM Pool
  final ManagedHsmSkuName name;

  /// Creates a new [ManagedHsmSku].
  /// [family] SKU Family of the managed HSM Pool
  /// [name] SKU of the managed HSM Pool
  ManagedHsmSku({
    required this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': name.value,
    };
  }

  factory ManagedHsmSku.fromMap(Map<String, dynamic> map) {
    return ManagedHsmSku(
      family: map['family'] as String,
      name: ManagedHsmSkuName.fromValue(map['name'] as String),
    );
  }
}

